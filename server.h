#pragma once
#include <QtCore>
#include <QtNetwork>
#include <iostream>

class LogServer : public QObject {
    Q_OBJECT
public:
    QTcpServer* server;
    QFile* logFile;
    LogServer() {
        server = new QTcpServer(this);
        logFile = new QFile("command_log.txt", this);

        connect(server, &QTcpServer::newConnection, this, &LogServer::newConnection);
        if (server->listen(QHostAddress::Any, 4726)) {
            std::cout << "Listening\n";
        }

        logFile->open(QIODevice::ReadWrite | QIODevice::Append);
    }
public slots:
    void newConnection() {
        QTcpSocket* clientSocket = server->nextPendingConnection();
        connect(clientSocket, &QTcpSocket::readyRead, this, &LogServer::newMessage);
        std::cout << "connected\n";
    }
    void newMessage() {
        QTcpSocket* clientSocket = qobject_cast<QTcpSocket*>(sender());
        QByteArray message = clientSocket->readAll();
        QByteArray client_ip = clientSocket->peerAddress().toString().toUtf8();
        logFile->write(client_ip);
        logFile->write(" {\n");
        logFile->write(message);
        logFile->write("\n}\n");
        std::cout << "message saved\n";
    }
};
