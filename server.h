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
        if (server->listen(QHostAddress::Any, 4726)) {
            std::cout << "Listening\n";
        }
        connect(server, &QTcpServer::newConnection, this, &LogServer::newConnection);
        logFile = new QFile("command_log.txt", this);
        logFile->open(QIODevice::ReadWrite | QIODevice::Append);
    }
private slots:
    void newConnection() {
        QTcpSocket* clientSocket = server->nextPendingConnection();
        connect(clientSocket, &QTcpSocket::readyRead, this, &LogServer::newMessage);
        connect(clientSocket, &QTcpSocket::disconnected, clientSocket, &QTcpSocket::deleteLater);
    }
    void newMessage() {
        QTcpSocket* clientSocket = qobject_cast<QTcpSocket*>(sender());
        QString message = clientSocket->readAll();
        QString client_ip = clientSocket->peerAddress().toString();
        logFile->write(client_ip.toUtf8());
        logFile->write(" {\n");
        logFile->write(message.toUtf8());
        logFile->write("\n}\n");
    }
};
