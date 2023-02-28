#pragma once

#include <string>

#include <muduo/net/TcpServer.h>
#include <muduo/net/EventLoop.h>

using namespace muduo;
using namespace muduo::net;

class ChatServer
{
public:
    ChatServer(EventLoop* loop,
                const InetAddress& listenAddr,
                const std::string& nameArg);

    ~ChatServer();

    // 启动服务
    void start();
private:
    // 上报连接的回调函数
    void onConnection(const TcpConnectionPtr&);
    // 读写事件的回调函数
    void onMessage(const TcpConnectionPtr&, Buffer *, Timestamp);
private:
    TcpServer server_;
    EventLoop* loop_;
};
