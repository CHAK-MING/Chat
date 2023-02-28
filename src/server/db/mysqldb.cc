#include "mysqldb.h"

MySQL::MySQL()
{
    conn_ = mysql_init(nullptr);
}

MySQL::~MySQL()
{
    if (conn_ != nullptr)
        mysql_close(conn_);
}

bool MySQL::connect()
{
    MYSQL *p = mysql_real_connect(conn_, server.c_str(), user.c_str(),
                                  password.c_str(), dbname.c_str(), 3306, nullptr, 0);
    if (p != nullptr)
    {
        mysql_query(conn_, "set names gbk");
        LOG_INFO << "connect mysql success!";
    }
    else 
    {
        LOG_INFO << "connect mysql fail!";
    }
    return p;
}

bool MySQL::update(std::string sql)
{
    if (mysql_query(conn_, sql.c_str()))
    {
        LOG_INFO << sql << " 更新失败";
        return false;
    }
    return true;
}

MYSQL_RES *MySQL::query(std::string sql)
{
    if (mysql_query(conn_, sql.c_str()))
    {
        LOG_INFO << sql << " 查询失败";
        return nullptr;
    }
    return mysql_use_result(conn_);
}
