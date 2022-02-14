#include "session.h"

Session::Session(tcp::socket socket, std::shared_ptr<DataBase> db)
    : _socket{std::move(socket)}, _db{db}
{
}

void Session::start() 
{
    do_read();
}

void Session::do_read() 
{
    auto self(shared_from_this());
    _socket.async_read_some(boost::asio::buffer(_data, _maxLenght),
        [this, self](boost::system::error_code ec, size_t lenght)
        {
            if (!ec)
            {
                do_write(execCmd(_data, lenght));
            }
        });
}

void Session::do_write(const std::string &result)
{
    auto self(shared_from_this());
    boost::asio::async_write(_socket, boost::asio::buffer(result.data(), result.size()), 
        [this, self](boost::system::error_code ec, size_t)
        {
            if (!ec)
            {
                do_read();
            }
        });
}

std::string Session::execCmd(char *data, size_t lenght) 
{
    auto words = parseCommand(std::string(data, lenght));
    if (words.empty())
    {
        return "ERR query is empty\n";
    }
    if (words.at(0) == "INSERT" && words.size() == 4)
    {
        return _db->insert(words.at(1), std::vector<std::string>{words.at(2), words.at(3)});
    }
    else if (words.at(0) == "TRUNCATE" && words.size() == 2)
    {
        return _db->truncate(words.at(1));
    }
    else if (words.at(0) == "INTERSECTION")
    {
        return _db->intersection();
    }
    else if (words.at(0) == "SYMMETRIC_DIFFERENCE")
    {
        return _db->symmetricDifference();
    }
    return "ERR unknown query\n";
}

std::vector<std::string> Session::parseCommand(std::string cmd) 
{
    {
        auto i = cmd.find("\n");
        if (i != std::string::npos)
        {
            cmd = cmd.substr(0, i);
        }
    }
    std::vector<std::string> words;
    while (!cmd.empty())
    {
        auto i = cmd.find(" ");
        if (i == std::string::npos)
        {
            words.emplace_back(cmd);
            cmd.clear();
            break;
        }
        words.emplace_back(cmd.substr(0, i));
        cmd = cmd.substr(i + std::strlen(" "), std::string::npos);
    }
    return words;
}
