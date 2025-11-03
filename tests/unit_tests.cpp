#include <gtest/gtest.h>
#include "math_operations.h"

TEST(Addition, PositiveNumbers) {
    EXPECT_EQ(add(2, 3), 5);
}

TEST(Addition, NegativeNumbers) {
    EXPECT_EQ(add(-2, -3), -5);
}

TEST(Addition, MixedNumbers) {
    EXPECT_EQ(add(-5, 10), 5);
}

TEST(Addition, Zero) {
    EXPECT_EQ(add(0, 0), 0);
}

TEST(Addition, LargeNumbers) {
    EXPECT_EQ(add(1000000, 2000000), 3000000);
}
