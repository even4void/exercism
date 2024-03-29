#include "vendor/unity.h"
#include "../src/isogram.h"
#include <stdlib.h>

void setUp(void)
{
}

void tearDown(void)
{
}

void test_empty_string(void)
{
   TEST_ASSERT_TRUE(is_isogram(""));
}

void test_null(void)
{
  TEST_IGNORE(); 
  TEST_ASSERT_FALSE(is_isogram(NULL));
}

void test_lower_case_only(void)
{
   TEST_ASSERT_TRUE(is_isogram("isogram"));
}

void test_duplicated_letter(void)
{
   TEST_ASSERT_FALSE(is_isogram("eleven"));
}

void test_duplicated_letter_from_end_of_alphabet(void)
{
   TEST_ASSERT_FALSE(is_isogram("zzyzx"));
}

void test_longest_known_isogram(void)
{
   TEST_ASSERT_TRUE(is_isogram("subdermatoglyphic"));
}

void test_duplicated_letter_mixed_case(void)
{
   TEST_ASSERT_FALSE(is_isogram("Alphabet"));
}

void test_duplicated_letter_mixed_case_lowercase_first(void)
{
   TEST_ASSERT_FALSE(is_isogram("alphAbet"));
}

void test_non_letter_char(void)
{
   TEST_ASSERT_TRUE(is_isogram("thumbscrew-japingly"));
}

void test_duplicated_letter_following_non_letter_char(void)
{
   TEST_ASSERT_FALSE(is_isogram("thumbscrew-jappingly"));
}

void test_duplicated_non_letter_char(void)
{
   TEST_ASSERT_TRUE(is_isogram("six-year-old"));
}

void test_multiple_whitespace(void)
{
   TEST_ASSERT_TRUE(is_isogram("Emily Jung Schwartzkopf"));
}

void test_duplicated_letter_within_word(void)
{
   TEST_ASSERT_FALSE(is_isogram("accentor"));
}

void test_same_first_and_last_characters(void)
{
   TEST_ASSERT_FALSE(is_isogram("angola"));
}

int main(void)
{
   UnityBegin("test/test_isogram.c");

   RUN_TEST(test_empty_string);
   RUN_TEST(test_null);
   RUN_TEST(test_lower_case_only);
   RUN_TEST(test_duplicated_letter);
   RUN_TEST(test_duplicated_letter_from_end_of_alphabet);
   RUN_TEST(test_longest_known_isogram);
   RUN_TEST(test_duplicated_letter_mixed_case);
   RUN_TEST(test_duplicated_letter_mixed_case_lowercase_first);
   RUN_TEST(test_non_letter_char);
   RUN_TEST(test_duplicated_letter_following_non_letter_char);
   RUN_TEST(test_duplicated_non_letter_char);
   RUN_TEST(test_multiple_whitespace);
   RUN_TEST(test_duplicated_letter_within_word);
   RUN_TEST(test_same_first_and_last_characters);

   return UnityEnd();
}
