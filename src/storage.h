#ifndef STORAGE_H
#define STORAGE_H

#include <map>
#include <string>
#include <mutex>
#include <set>

/**
 * @brief хранилище данных
 */
class Storage
{
    /**
     * @brief Таблица
     */
    class Table
    {
        std::mutex _mtx;
        std::map<int, std::string> _data;
    public:
        Table() = default;
        bool contains(const int id) { return _data.count(id) > 0; }
        void insert(const int id, const std::string &name);
        void truncate();
        std::set<int> ids();
        std::string getName(const int id);

        void lock() { _mtx.lock(); }
        void unlock() { _mtx.unlock(); }
    };

    Table A;
    Table B;
public:
    const std::string _ok {"OK\n"};

    Storage() = default;

    /**
     * @brief вставить запись в таблицу
     */
    std::string insert(const std::string &tableName, const int id, const std::string &name);

    /**
     * @brief очистить таблицу
     */
    std::string truncate(const std::string &tableName);

    /**
     * @brief пересечение таблиц А и В
     */
    std::string intersection();

    /**
     * @brief симметричная разница таблиц А и В
     */
    std::string symmetricDifference();

private:
    Table *table(const std::string &tableName);
};

#endif //STORAGE_H