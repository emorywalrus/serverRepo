#include "server.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    LogServer logServer;
    return a.exec();
}
