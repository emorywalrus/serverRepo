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
        logFile->open(QIODevice::ReadWrite | QIODevice::Append);
        connect(server, &QTcpServer::newConnection, this, &LogServer::newConnection);
        if (server->listen(QHostAddress::Any, 4726)) {
            std::cout << "Listening\n";
        }
        
    }
public slots:
    void newConnection() {
        QTcpSocket* clientSocket = server->nextPendingConnection();
        connect(clientSocket, &QTcpSocket::readyRead, this, &LogServer::newMessage);
        connect(clientSocket, &QTcpSocket::disconnected, clientSocket, &QTcpSocket::deleteLater);
    }
    void newMessage() {
        QTcpSocket* clientSocket = qobject_cast<QTcpSocket*>(sender());
        QTextStream logStream(logFile);

        logStream << clientSocket->peerAddress().toString();
        logStream << " {\n";
        while (clientSocket->bytesAvailable()) {
            logStream << clientSocket->readAll();
        }
        logStream << "\n}\n";
    }
};
