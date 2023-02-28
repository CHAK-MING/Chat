#pragma once

#include "user.hpp"

// User表的数据操作类
class UserModel
{
public:
    bool insert(User& user);

    // 根据id查询用户信息
    User query(int id);

    // 刷新用户的状态信息
    bool updateState(User& user);

    // 重置用户的状态信息
    void resetState();
};