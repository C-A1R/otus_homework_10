#ifndef SESSION_H
#define SESSION_H

#include "boost/asio.hpp"
#include "storage.h"

using boost::asio::ip::tcp;

class Session : public std::enable_shared_from_this<Session>
{
    tcp::socket _socket;
    enum {_maxLenght = 1024};
    char _data[_maxLenght];
    std::shared_ptr<Storage> _storage;
public:
    Session(tcp::socket socket, const std::shared_ptr<Storage> &stor);
    void start();
private:
    void do_read();
    void do_write(const std::string &result);

    std::string execCmd(char *data, size_t lenght);
    std::vector<std::string> parseCommand(std::string cmd);
};

#endif //SESSION_H