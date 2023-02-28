#pragma once

#include <string>

// ORM类
class User
{
public:
    User(int id = -1, std::string name = "",std::string pwd = "",std::string state = "offline")
        : id_(id), name_(name), password_(pwd), state_(state)
    {}

    // set
    void setId(int id) { id_ = id; }
    void setName(std::string name) { name_ = name; }
    void setPassword(std::string pwd) { password_ = pwd; }
    void setState(std::string state) { state_ = state; }

    int getId() const { return id_; }
    std::string getName() const { return name_; }
    std::string getPassword() const { return password_; }
    std::string getState() const { return state_; }
private:
    int id_;
    std::string name_;
    std::string password_;
    std::string state_;
};