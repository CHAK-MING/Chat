#pragma once

#include <muduo/net/TcpConnection.h>
#include <unordered_map>
#include <functional>
#include <mutex>

#include "json.hpp"
#include "usermodel.h"
#include "offlinemessagemodel.h"
#include "friendmodel.h"
#include "groupmodel.h"
#include "redis.h"

using namespace muduo;
using namespace muduo::net;
using json = nlohmann::json;

using MsgHandler = std::function<void(const TcpConnectionPtr&, json&, Timestamp)>;

// 聊天服务器的业务类
// 单例模式
class ChatService
{
public:
    static ChatService* instance();

    // 处理登录业务
    void login(const TcpConnectionPtr& conn, json& js, Timestamp time);
    // 处理登出业务
    void loginout(const TcpConnectionPtr& conn, json& js, Timestamp time);
    // 处理注册业务
    void reg(const TcpConnectionPtr& conn, json& js, Timestamp time);
    // 一对一聊天业务
    void oneChat(const TcpConnectionPtr& conn, json& js, Timestamp time);
    // 添加好友业务
    void addFriend(const TcpConnectionPtr& conn, json& js, Timestamp time);
    // 创建群组
    void createGroup(const TcpConnectionPtr& conn, json& js, Timestamp time);
    // 加入群组业务
    void addGroup(const TcpConnectionPtr& conn, json& js, Timestamp time);
    // 群组聊天业务
    void groupChat(const TcpConnectionPtr& conn, json& js, Timestamp time);

    // 获取消息对应的处理器
    MsgHandler getHandler(int msgid) const;
    // 处理客户端异常
    void clientCloseException(const TcpConnectionPtr& conn);
    // 服务器异常，业务重置方法
    void reset();

    // 从redis消息队列中获取订阅的消息
    void handlerRedisSubscribeMessage(int, std::string);
private:
    ChatService();
private:
    // 存储消息id和对应业务的处理方法
    std::unordered_map<int, MsgHandler> msgHandlerMap_;

    // 存储在线用户的通信连接
    std::unordered_map<int, TcpConnectionPtr> userConnMap_;

    // 互斥锁，保证userConnMap_的线程安全
    std::mutex connMutex_;

    // 数据操作类对象
    UserModel userModel_;
    OfflineMsgModel offlineMsgModel_;
    FriendModel friendModel_;
    GroupModel groupModel_;

    // Redis操作对象
    Redis redis_;
};