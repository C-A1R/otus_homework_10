#include "storage.h"

void Storage::Table::insert(const int id, const std::string &name) 
{
    std::lock_guard<std::mutex> lock(_mtx);
    _data.insert(std::make_pair(id, name));
}

void Storage::Table::truncate() 
{
    std::lock_guard<std::mutex> lock(_mtx);
    _data.clear();
}

std::set<int> Storage::Table::ids() 
{
    std::set<int> result;
    for (auto i = _data.cbegin(); i != _data.cend(); ++i)
    {
        result.insert(i->first);
    }
    return result;
}

std::string Storage::Table::getName(const int id) 
{
    if (contains(id))
    {
        return _data.at(id);
    }
    return "";
}


std::string Storage::insert(const std::string &tableName, const int id, const std::string &name) 
{
    if (tableName.empty())
    {
        return "ERR invalid query\n";
    }
    auto tbl = table(tableName);
    if (!tbl)
    {
        return "ERR table " + tableName + " not exists\n";
    }
    if (tbl->contains(id))
    {
        return "ERR id " + std::to_string(id) + " not unique\n";
    }
    tbl->insert(id, name);
    return _ok;
}

std::string Storage::truncate(const std::string &tableName)
{
    if (tableName.empty())
    {
        return "ERR invalid query\n";
    }
    auto tbl = table(tableName);
    if (!tbl)
    {
        return "ERR table " + tableName + " not exists\n";
    }
    tbl->truncate();
    return _ok;
}

std::string Storage::intersection() 
{
    std::string response;
    std::lock_guard<Table> lockA(A);
    std::lock_guard<Table> lockB(B);
    auto ids_A = A.ids();
    for (const auto id : ids_A)
    {
        if (!B.contains(id))
        {
            continue;
        }
        response += std::to_string(id) + "," + A.getName(id) + "," + B.getName(id) + "\n";
    }
    response += _ok;
    return response;
}

std::string Storage::symmetricDifference() 
{
    std::string response;
    std::lock_guard<Table> lockA(A);
    std::lock_guard<Table> lockB(B);
    auto ids = A.ids();
    ids.merge(B.ids());
    for (const auto id : ids)
    {
        if (A.contains(id) && B.contains(id))
        {
            continue;
        }
        response += std::to_string(id) + "," + A.getName(id) + "," + B.getName(id) + "\n";
    }
    response += _ok;
    return response;
}

Storage::Table *Storage::table(const std::string &tableName) 
{
    if (tableName == "A")
    {
        return &A;
    }
    else if (tableName == "B")
    {
        return &B;
    }
    return nullptr;
}