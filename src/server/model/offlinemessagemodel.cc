#include "offlinemessagemodel.h"
#include "mysqldb.h"

void OfflineMsgModel::insert(int userid, std::string msg)
{
    char sql[1024] = {0};
    snprintf(sql, sizeof sql, "insert into offlinemessage values(%d, '%s')", userid, msg.c_str());

    MySQL mysql;
    if(mysql.connect())
    {
        if(mysql.update(sql));
    }
}

void OfflineMsgModel::remove(int userid)
{
    char sql[1024] = {0};
    snprintf(sql, sizeof sql, "delete from offlinemessage where userid = %d", userid);

    MySQL mysql;
    if(mysql.connect())
    {
        if(mysql.update(sql));
    }
}

std::vector<std::string> OfflineMsgModel::query(int userid)
{
    char sql[1024] = {0};
    snprintf(sql, sizeof sql, "select message from offlinemessage where userid = %d", userid);

    std::vector<std::string> vec;
    MySQL mysql;
    if(mysql.connect())
    {
        MYSQL_RES* res = mysql.query(sql);
        if(res != nullptr)
        {
            MYSQL_ROW row;
            while((row = mysql_fetch_row(res)) != nullptr)
            {
                vec.push_back(row[0]);
            }
            mysql_free_result(res);
        }
    }
    return vec;
}
