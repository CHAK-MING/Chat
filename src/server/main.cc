#include "chatserver.h"
#include "chatservice.h"
#include <iostream>
#include <signal.h>

using namespace std;

void resetHandler(int)
{
    ChatService::instance()->reset();
    exit(0);
}

int main()
{
    signal(SIGINT, resetHandler);
    EventLoop loop;
    InetAddress addr("127.0.0.1", 8000);
    ChatServer server(&loop, addr, "ChatServer");

    server.start();
    loop.loop();
}