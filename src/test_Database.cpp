#define BOOST_TEST_MODULE test_database

#include "database.h"

#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_SUITE(test_database)

BOOST_AUTO_TEST_CASE(test_database_open)
{
    DataBase db(":memory:");
    BOOST_CHECK(db.open());
}

BOOST_AUTO_TEST_CASE(test_database_insert)
{
    DataBase db(":memory:");
    db.open();
    BOOST_CHECK(db._ok == db.insert("A", std::vector<std::string>{"0", "lean"}));
    BOOST_CHECK(db._ok != db.insert("A", std::vector<std::string>{"0", "understand"}));
}

BOOST_AUTO_TEST_CASE(test_database_truncate)
{
    DataBase db(":memory:");
    db.open();
    db.insert("A", std::vector<std::string>{"0", "lean"});
    db.truncate("A");
    BOOST_CHECK(db._ok == db.insert("A", std::vector<std::string>{"0", "lean"}));
}

BOOST_AUTO_TEST_CASE(test_database_intersection_symmetric_difference)
{
    DataBase db(":memory:");
    db.open();
    db.insert("A", std::vector<std::string>{"0", "lean"});
    db.insert("A", std::vector<std::string>{"1", "sweater"});
    db.insert("A", std::vector<std::string>{"2", "frank"});
    db.insert("A", std::vector<std::string>{"3", "violation"});
    db.insert("A", std::vector<std::string>{"4", "quality"});
    db.insert("A", std::vector<std::string>{"5", "precision"});

    db.insert("B", std::vector<std::string>{"3", "proposal"});
    db.insert("B", std::vector<std::string>{"4", "example"});
    db.insert("B", std::vector<std::string>{"5", "lake"});
    db.insert("B", std::vector<std::string>{"6", "flour"});
    db.insert("B", std::vector<std::string>{"7", "wonder"});
    db.insert("B", std::vector<std::string>{"8", "selection"});

    std::string expected{"3,violation,proposal\n"
                         "4,quality,example\n"
                         "5,precision,lake\n"
    };
    expected += db._ok;
    BOOST_CHECK_EQUAL(expected, db.intersection());

    expected = std::string {"0,lean,\n"
                            "1,sweater,\n"
                            "2,frank,\n"
                            "6,,flour\n"
                            "7,,wonder\n"
                            "8,,selection\n"               
    };
    expected += db._ok;
    BOOST_CHECK_EQUAL(expected, db.symmetricDifference());
}

BOOST_AUTO_TEST_SUITE_END()