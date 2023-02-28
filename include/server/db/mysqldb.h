#pragma once

#include <muduo/base/Logging.h>
#include <mysql/mysql.h>
#include <string>

using namespace muduo;

static std::string server = "127.0.0.1";
static std::string user = "root";
static std::string password = "604222352mj";
static std::string dbname = "chat";


class MySQL
{
public:
    MySQL();
    ~MySQL();

    // 连接数据库
    bool connect();

    // 更新操作
    bool update(std::string sql);

    // 查询操作
    MYSQL_RES* query(std::string sql);

    // 获取连接
    MYSQL* getConnection() const { return conn_; }
private:
    MYSQL* conn_;
};