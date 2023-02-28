#pragma once

#include "user.hpp"

class GroupUser : public User
{
public:
    void setRole(std::string role) { role_ = role; }
    std::string getRole() const { return role_; }
private:
    std::string role_;
};