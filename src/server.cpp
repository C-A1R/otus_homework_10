#include "server.h"
#include "session.h"

#include <iostream>


Server::Server(boost::asio::io_context &io_context, short port)
    : _acceptor(io_context, tcp::endpoint(tcp::v4(), port))
{
    _storage = std::make_shared<Storage>();
    do_accept();
}

void Server::do_accept() 
{
    _acceptor.async_accept([this](boost::system::error_code ec, tcp::socket socket)
    {
        if (!ec)
        {
            std::make_shared<Session>(std::move(socket), _storage)->start();
        }
        do_accept();
    });
}
