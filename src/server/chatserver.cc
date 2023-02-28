#include "chatserver.h"
#include "chatservice.h"
#include "json.hpp"
#include <functional>

using json = nlohmann::json;
using namespace std::placeholders;

ChatServer::ChatServer(EventLoop* loop,
                const InetAddress& listenAddr,
                const std::string& nameArg)
    : server_(loop, listenAddr, nameArg)
    , loop_(loop)
{
      // 注册回调函数
    server_.setConnectionCallback(std::bind(&ChatServer::onConnection, this, _1));
    server_.setMessageCallback(std::bind(&ChatServer::onMessage, this, _1, _2, _3));

    // 设置线程数量
    server_.setThreadNum(4);

}
ChatServer::~ChatServer()
{}

void ChatServer::start()
{
    server_.start();
}

void ChatServer::onConnection(const TcpConnectionPtr &conn)
{
    // 客户端断开连接
    if(!conn->connected())
    {
        // 客户端异常关闭
        ChatService::instance()->clientCloseException(conn);
        conn->shutdown();
    }
}

void ChatServer::onMessage(const TcpConnectionPtr& conn, Buffer* buffer, Timestamp time)
{
    std::string buf = buffer->retrieveAllAsString();
    json js = json::parse(buf); // 反序列化
    // 通过js["msgid"] => 获取业务handler => conn js time
    auto msgHandler = ChatService::instance()->getHandler(js["msgid"].get<int>());
    msgHandler(conn, js, time);
}

