#include "../json.hpp"

using json = nlohmann::json;

#include <iostream>
#include <vector>
#include <map>

using namespace std;

void test1()
{
    json js;
    js["msg_type"] = 2;
    js["from"] = "zhangsan";
    js["to"] = "lisi";
    js["msg"] = "hello what are you doing now?";
    cout << js << endl;
}

int main()
{
    test1();
}