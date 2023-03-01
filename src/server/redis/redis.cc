#include "redis.h"
#include <iostream>

Redis::Redis()
    : publish_context_(nullptr), subscribe_context_(nullptr)
{
}

Redis::~Redis()
{
    if(publish_context_ != nullptr)
    {
        redisFree(publish_context_);
    }
    if(subscribe_context_ != nullptr)
    {
        redisFree(subscribe_context_);
    }
}

bool Redis::connect()
{
    // 负责publish发布消息的上下文连接
    publish_context_ = redisConnect("127.0.0.1", 6379);
    if(nullptr == publish_context_)
    {
        std::cerr << "connect redis failed!" << std::endl;
        return false;
    }

    // 负责subscribe订阅消息的上下文连接
    subscribe_context_ = redisConnect("127.0.0.1", 6379);
    if(nullptr == subscribe_context_)
    {
        std::cerr << "connect redis failed!" << std::endl;
        return false;
    }

    // 单独的线程中，监听通道的事件，有消息给业务层上报
    std::thread t([&](){
        observer_channel_message();
    });
    t.detach();

    std::cout << "connect redis-server success!" << std::endl;

    return true;
}


bool Redis::publish(int channel, std::string message)
{
    redisReply* reply = (redisReply*)redisCommand(publish_context_, "PUBLISH %d %s", channel, message.c_str());
    if(nullptr == reply)
    {
        std::cerr << "publish command failed!" << std::endl;
        return false; 
    }
    freeReplyObject(reply);
    return true;
}   

bool Redis::subscribe(int channel)
{
    // SUBSCRIBE命令本身会造成线程阻塞等待通道里面发生的消息，这里只做订阅通道，不接受通道消息
    // 通道消息的接收专门在observer_channel_message函数中的独立线程中进行
    // 只负责发送命令，不阻塞接收redis server响应消息，否则和notifyMsg线程抢占响应资源
    if(REDIS_ERR == redisAppendCommand(this->subscribe_context_, "SUBSCRIBE %d", channel))
    {
        std::cerr << "subscribe command failed!" << std::endl;
        return false;
    }
    // redisBufferWrite可以循环发送缓冲区，知道缓冲区数据发送完毕
    int done = 0;
    while(!done)
    {
        if(REDIS_ERR == redisBufferWrite(subscribe_context_, &done))
        {
            std::cerr << "subscribe command failed!" << std::endl;
            return false;
        }
    }
    return true;
}

bool Redis::unsubscribe(int channel)
{
    if(REDIS_ERR == redisAppendCommand(this->subscribe_context_, "UNSUBSCRIBE %d", channel))
    {
        std::cerr << "unsubscribe command failed!" << std::endl;
        return false;
    }
    // redisBufferWrite可以循环发送缓冲区，知道缓冲区数据发送完毕
    int done = 0;
    while(!done)
    {
        if(REDIS_ERR == redisBufferWrite(subscribe_context_, &done))
        {
            std::cerr << "unsubscribe command failed!" << std::endl;
            return false;
        }
    }
    return true;
}

void Redis::observer_channel_message()
{
    redisReply* reply = nullptr;
    while(REDIS_OK == redisGetReply(subscribe_context_, (void**)&reply))
    {
        // 订阅收到的消息是一个带三元素的数组
        // reply->element[1] : channel
        // reply->element[2] : message
        if(reply != nullptr && reply->element[2] != nullptr && reply->element[2]->str != nullptr)
        {
            // 给业务层上报通道发送的消息
            notify_message_handler_(atoi(reply->element[1]->str), reply->element[2]->str);
        }
        freeReplyObject(reply);
    }
    std::cerr << ">>>>>>>>>>>>>>> observer_channel_message quit <<<<<<<<<<<<<<<" << std::endl;
}

void Redis::init_notify_handler(std::function<void(int, std::string)> fn)
{
    notify_message_handler_ = fn;
}
