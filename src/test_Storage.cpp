#define BOOST_TEST_MODULE test_database

#include "storage.h"

#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_SUITE(test_database)

BOOST_AUTO_TEST_CASE(test_database_insert)
{
    Storage storage;
    BOOST_CHECK(storage._ok == storage.insert("A", 0, "lean"));
    BOOST_CHECK(storage._ok != storage.insert("A", 0, "understand"));
}

BOOST_AUTO_TEST_CASE(test_database_truncate)
{
    Storage storage;
    storage.insert("A", 0, "lean");
    storage.truncate("A");
    BOOST_CHECK(storage._ok == storage.insert("A", 0, "lean"));
}

BOOST_AUTO_TEST_CASE(test_database_intersection_symmetric_difference)
{
    Storage storage;
    storage.insert("A", 0, "lean");
    storage.insert("A", 1, "sweater");
    storage.insert("A", 2, "frank");
    storage.insert("A", 3, "violation");
    storage.insert("A", 4, "quality");
    storage.insert("A", 5, "precision");

    storage.insert("B", 3, "proposal");
    storage.insert("B", 4, "example");
    storage.insert("B", 5, "lake");
    storage.insert("B", 6, "flour");
    storage.insert("B", 7, "wonder");
    storage.insert("B", 8, "selection");

    std::string expected{"3,violation,proposal\n"
                         "4,quality,example\n"
                         "5,precision,lake\n"
    };
    expected += storage._ok;
    BOOST_CHECK_EQUAL(expected, storage.intersection());

    expected = std::string {"0,lean,\n"
                            "1,sweater,\n"
                            "2,frank,\n"
                            "6,,flour\n"
                            "7,,wonder\n"
                            "8,,selection\n"               
    };
    expected += storage._ok;
    BOOST_CHECK_EQUAL(expected, storage.symmetricDifference());
}

BOOST_AUTO_TEST_SUITE_END()