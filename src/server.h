#ifndef SERVER_H
#define SERVER_H

#include "session.h"
#include "storage.h"

class Server
{
    tcp::acceptor _acceptor;
    std::shared_ptr<Storage> _storage;
public:
    Server(boost::asio::io_context &io_context, short port);
private:
    void do_accept();
};

#endif //SERVER_H