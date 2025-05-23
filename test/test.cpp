import mylibrary;

#include <gtest/gtest.h>

TEST(SumTest, NegativeNumbers)
{
    static constexpr int number_one = -3;
    static constexpr int number_two = -5;
    static constexpr int sum = number_one + number_two;

    EXPECT_EQ(mylib::sum(number_one, number_two), sum);
}

TEST(SumTest, PositiveNumbers)
{
    static constexpr int number_one = 3;
    static constexpr int number_two = 5;
    static constexpr int sum = number_one + number_two;

    EXPECT_EQ(mylib::sum(number_one, number_two), sum);
}
