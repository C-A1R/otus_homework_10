#ifndef SERVER_H
#define SERVER_H

#include "session.h"
#include "database.h"

class Server
{
    tcp::acceptor _acceptor;
    std::shared_ptr<DataBase> _db {nullptr};
public:
    Server(boost::asio::io_context &io_context, short port);
private:
    void do_accept();
};

#endif //SERVER_H