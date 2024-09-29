#include <gtest/gtest.h>

#include "my_add.hpp"

TEST(Add, Simple){
    EXPECT_EQ(my_add(2,2), 4);
    EXPECT_EQ(my_add(5, 7), my_add(5, 7));
    EXPECT_EQ(my_add(-42,3), -39);
}