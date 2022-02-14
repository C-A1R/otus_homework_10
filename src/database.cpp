#include "database.h"

#include <iostream>

DataBase::DataBase(const char *dbName) : _dbName{dbName}
{
}

DataBase::~DataBase()
{
    sqlite3_close(_handler);
    remove(_dbName);
}

bool DataBase::open() 
{
    if (sqlite3_open(_dbName, &_handler))
    {
        std::cout << "ERR database is not opened " << sqlite3_errmsg(_handler) << std::endl;
        return false;
    }

    //о создании таблиц с клиента в задании ничего не сказано, поэтому создадим их тут
    if (exec("CREATE TABLE IF NOT EXISTS A (id INT PRIMARY KEY, name VARCHAR(255));") != _ok)
    {
        return false;
    }
    if (exec("CREATE TABLE IF NOT EXISTS B (id INT PRIMARY KEY, name VARCHAR(255));") != _ok)
    {
        return false;
    }
    return true;
}

std::string DataBase::insert(const std::string &table, const std::vector<std::string> &values)
{
    if (table.empty() || values.size() != 2)
    {
        return "ERR invalid query\n";
    }
    std::string query = "INSERT INTO " + table + " (id, name) VALUES ("
                 + values.at(0) + ", \"" + values.at(1) + "\");";
    return exec(query);
}

std::string DataBase::truncate(const std::string &table) 
{
    if (table.empty())
    {
        return "ERR invalid query\n";
    }
    std::string query = "DELETE FROM " + table + ";";
    return exec(query);
}

std::string DataBase::intersection() 
{
    std::string query = "SELECT A.id, A.name, B.name FROM A INNER JOIN B ON A.id = B.id;";
    std::string *context_str = new std::string();
    auto result = exec(query, &callback, context_str);
    std::string response;
    if (result == _ok)
    {
        response = (*context_str) + _ok;
    }
    else
    {
        response = result;
    }
    delete context_str;
    return response;
}

std::string DataBase::symmetricDifference() 
{
    std::string query = "SELECT A.*, B.name FROM A LEFT JOIN B ON A.id = B.id WHERE B.id IS NULL "
                        "UNION " 
                        "SELECT B.id, A.name, B.name FROM B LEFT JOIN A ON B.id = A.id WHERE A.id IS NULL;";

    std::string *context_str = new std::string();
    auto result = exec(query, &callback, context_str);
    std::string response;
    if (result == _ok)
    {
        response = (*context_str) + _ok;
    }
    else
    {
        response = result;
    }
    delete context_str;
    return response;
}

std::string DataBase::exec(const std::string &query, sqlite3_callback callback, void *context) 
{
    if (!_handler)
    {
        return "ERR fail exec\n";
    }
    if (query.empty())
    {
        return "ERR query is empty\n";
    }
    
    char *errMsg {nullptr};
    if (std::lock_guard<std::mutex> lock(_mtx); 
        sqlite3_exec(_handler, query.c_str(), callback, context, &errMsg))
    {
        auto result = std::string("ERR ") + errMsg +'\n';
        sqlite3_free(errMsg);
        return result;
    }
    return _ok;
}

int DataBase::callback(void *context, int columns, char **data, char **)
{
    if (!columns || !data)
    {
        return 0;
    }
    auto result = reinterpret_cast<std::string *>(context);
    for (int i = 0; i < columns; ++i)
    {
        if (data[i] != nullptr)
        {
            (*result) += data[i];
        }
        if (i != columns - 1)
        {
            (*result) += ',';
        }
    }
    (*result) += '\n';
    return 0;
}
