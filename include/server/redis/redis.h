#pragma once

#include <hiredis/hiredis.h>
#include <thread>
#include <functional>
#include <string>

class Redis
{
public:
    Redis();
    ~Redis();

    // 连接redis服务器
    bool connect();

    // 向redis指定的通道channel发布消息
    bool publish(int channel, std::string message);

    // 向redis指定的通道subscribe订阅消息
    bool subscribe(int channel);

    // 向redis指定的通道unsubscribe取消订阅消息
    bool unsubscribe(int channel);

    // 在独立线程中接受订阅通道中的消息
    void observer_channel_message();

    // 初始化业务层上报通道消息的回调对象
    void init_notify_handler(std::function<void(int, std::string)> fn);
private:
    // hiredis同步上下文对象，负责publish消息
    redisContext* publish_context_;

    // hiredis同步上下文对象，负责subscribe消息
    redisContext* subscribe_context_;

    // 回调操作，收到订阅的消息，给service上报
    std::function<void(int, std::string)> notify_message_handler_;
};
