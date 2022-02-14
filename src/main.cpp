#include "server.h"

#include <cassert>

int main(int argc, char *argv[])
{
    assert(argc == 2);
    short port {0};
    std::stringstream sstr(argv[1]);
    sstr >> port;

    boost::asio::io_context io_context;
    Server server(io_context, port);
    io_context.run();
    return 0;
}