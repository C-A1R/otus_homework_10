#include "server.h"
#include "session.h"

#include <iostream>


Server::Server(boost::asio::io_context &io_context, short port)
    : _acceptor(io_context, tcp::endpoint(tcp::v4(), port))
{
    const char *dbName = "db.sqlite";
    _db = std::make_shared<DataBase>(dbName);
    if (!_db->open())
    {
        return;
    }
    do_accept();
}

void Server::do_accept() 
{
    _acceptor.async_accept([this](boost::system::error_code ec, tcp::socket socket)
    {
        if (!ec)
        {
            std::make_shared<Session>(std::move(socket), _db)->start();
        }
        do_accept();
    });
}
