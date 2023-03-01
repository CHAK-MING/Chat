#include "chatservice.h"
#include "public.h"

#include <muduo/base/Logging.h>
#include <string>
#include <vector>

ChatService* ChatService::instance()
{
    static ChatService service;
    return &service;
}


// 注册消息和回调操作
ChatService::ChatService() 
{
    // 用户基本业务管理相关事件处理回调注册
    msgHandlerMap_.insert({LOGIN_MSG, std::bind(&ChatService::login, this, _1, _2, _3)});
    msgHandlerMap_.insert({LOGINOUT_MSG, std::bind(&ChatService::loginout, this, _1, _2, _3)});
    msgHandlerMap_.insert({REG_MSG, std::bind(&ChatService::reg, this, _1, _2, _3)});
    msgHandlerMap_.insert({ONE_CHAT_MSG, std::bind(&ChatService::oneChat, this, _1, _2, _3)});
    
    // 群组业务管理相关事件处理回调注册
    msgHandlerMap_.insert({ADD_FRIEND_MSG, std::bind(&ChatService::addFriend, this, _1, _2, _3)});
    msgHandlerMap_.insert({CREATE_GROUP_MSG, std::bind(&ChatService::createGroup, this, _1, _2, _3)});
    msgHandlerMap_.insert({ADD_GROUP_MSG, std::bind(&ChatService::addGroup, this, _1, _2, _3)});
    msgHandlerMap_.insert({GROUP_CHAT_MSG, std::bind(&ChatService::groupChat, this, _1, _2, _3)});

    // 连接redis服务器
    if(redis_.connect())
    {
        // 设置上报消息的回调
        redis_.init_notify_handler(std::bind(&ChatService::handlerRedisSubscribeMessage, this, _1, _2));
    }
}

// 登录业务 username password
void ChatService::login(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    int id = js["id"].get<int>();
    std::string password = js["password"];

    User user = userModel_.query(id);
    if(user.getId() == id && user.getPassword() == password)
    {
        if(user.getState() == "online")
        {
            json response;
            response["msgid"] = LOGIN_MSG_ACK;
            response["errno"] = 2;
            response["errmsg"] = "this account is using, input another!";
            conn->send(response.dump());
        }
        else
        {
            // 登录成功
            std::unique_lock<std::mutex> lock(connMutex_);
            userConnMap_.insert({id, conn});
            lock.unlock();

            // 向订阅channel
            redis_.subscribe(id);

            user.setState("online");
            userModel_.updateState(user);
            json response;
            response["msgid"] = LOGIN_MSG_ACK;
            response["errno"] = 0;
            response["id"] = user.getId();
            response["name"] = user.getName();

            // 查看用户是否有离线消息
            std::vector<std::string> vec = offlineMsgModel_.query(id);
            if(!vec.empty())
            {
                response["offlinemsg"] = vec;
                // 读取该用户的离线消息后，把离线消息删除
                offlineMsgModel_.remove(id);
            }

            // 查询该用户的好友信息
            std::vector<User> userVec = friendModel_.query(id);
            if(!userVec.empty())
            {
                std::vector<std::string> vec;
                for(User& user : userVec)
                {
                    json js;
                    js["id"] = user.getId();
                    js["name"] = user.getName();
                    js["state"] = user.getState();
                    vec.push_back(js.dump());
                }
                response["friends"] = vec;
            }

            conn->send(response.dump());
        }
        
    }
    else
    {
        // 登录失败(用戶不存在)
        json response;
        response["msgid"] = LOGIN_MSG_ACK;
        response["errno"] = 1;
        response["errmsg"] = "id or password is invalid!";
        conn->send(response.dump());
    }
}

// 处理注销业务
void ChatService::loginout(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    int userid = js["id"].get<int>();

    {
        std::lock_guard<std::mutex> lock(connMutex_);
        auto it = userConnMap_.find(userid);
        if (it != userConnMap_.end())
        {
            userConnMap_.erase(it);
        }
    }

    // 用户注销，相当于就是下线，在redis中取消订阅通道
    redis_.unsubscribe(userid); 

    // 更新用户的状态信息
    User user(userid, "", "", "offline");
    userModel_.updateState(user);
}


// 注册业务 name password
void ChatService::reg(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    std::string name = js["name"];
    std::string password = js["password"];

    User user;
    user.setName(name);
    user.setPassword(password);
    bool state = userModel_.insert(user);
    if(state)
    {
        // 注册成功
        json response;
        response["msgid"] = REG_MSG_ACK;
        response["errno"] = 0;
        response["id"] = user.getId();
        conn->send(response.dump());
    }
    else
    {
        // 注册失败
        json response;
        response["msgid"] = REG_MSG_ACK;
        response["errno"] = 1;
        conn->send(response.dump());
    }
}

void ChatService::oneChat(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    int toid = js["toid"].get<int>();

    std::unique_lock<std::mutex> lock(connMutex_);
    auto it = userConnMap_.find(toid);
    if(it != userConnMap_.end())
    {
        // toid在线
        // 转发消息 
        it->second->send(js.dump());
        return;
    }
    lock.unlock();

    // 查询toid是否在线，是否在其他服务器登录
    User user = userModel_.query(toid);
    if(user.getState() == "online")
    {
        redis_.publish(toid, js.dump());
        return;
    }

    // 不在线，存储离线消息
    offlineMsgModel_.insert(toid, js.dump());
}

// msgid id friendid
void ChatService::addFriend(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    int userid = js["id"].get<int>();
    int friendid = js["friendid"].get<int>();
    friendModel_.insert(userid, friendid);
}

void ChatService::createGroup(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    int userid = js["id"].get<int>();
    std::string name = js["groupname"];
    std::string desc = js["groupdesc"];

    // 创建新的群组信息
    Group group(-1, name, desc);
    if(groupModel_.createGroup(group))
    {
        groupModel_.addGroup(userid, group.getId(), "creator");
    }
}

void ChatService::addGroup(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    int userid = js["id"].get<int>();
    int groupid = js["groupid"].get<int>();
    groupModel_.addGroup(userid, groupid, "normal");
}

void ChatService::groupChat(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    int userid = js["id"].get<int>();
    int groupid = js["groupid"].get<int>();
    std::vector<int> useridVec = groupModel_.queryGroupUsers(userid, groupid);

    std::lock_guard<std::mutex> lock(connMutex_);
    for(int id : useridVec)
    {
        auto it = userConnMap_.find(id);
        if(it != userConnMap_.end())
        {
            // 转发群消息
            it->second->send(js.dump());
        }
        else
        {
            // 查看toid是否在线
            User user = userModel_.query(id);
            if(user.getState() == "online")
            {
                redis_.publish(id, js.dump());
            }
            else
            {
                // 存储离线消息
                offlineMsgModel_.insert(id, js.dump());
            }
        }
    }
}

MsgHandler ChatService::getHandler(int msgid) const
{
    // 日志 记录msgid没有对应的事件处理回调
    auto it = msgHandlerMap_.find(msgid);
    if(it == msgHandlerMap_.end())
    {
        return [msgid](const TcpConnectionPtr &conn, json &json, Timestamp time) {
            LOG_ERROR << "msgid: " << msgid << " can not find handler!";
        };
    }
    else
    {
        return msgHandlerMap_.at(msgid);
    }
}

void ChatService::clientCloseException(const TcpConnectionPtr &conn)
{
    User user;
    std::unique_lock<std::mutex> lock(connMutex_);
    for(auto it = userConnMap_.begin(); it != userConnMap_.end(); ++it)
    {
        if(it->second == conn)
        {
            // 从map表中删除用户的信息
            user.setId(it->first);
            userConnMap_.erase(it);
            break;
        }
    }
    lock.unlock();

    redis_.unsubscribe(user.getId());

    if(user.getId() != -1)
    {
        // 更新用户的状态
        user.setState("offline");
        userModel_.updateState(user);
    }
}

// 把online状态的用户设置成offline
void ChatService::reset()
{
    userModel_.resetState();
}

void ChatService::handlerRedisSubscribeMessage(int userid, std::string msg)
{
    std::lock_guard<std::mutex> lock(connMutex_);
    auto it = userConnMap_.find(userid);
    if( it != userConnMap_.end())
    {
        it->second->send(msg);
        return;
    }

    // 存储离线消息
    offlineMsgModel_.insert(userid, msg);
}
