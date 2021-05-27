#include <stdio.h> 
#include <string.h>

int main (void)
{
  printf("TEST 1 - strlen:\n");
  printf("TRY 1.1 : [4] [%ld]\n", strlen("toto"));
  printf("TRY 1.2 : [0] [%ld]\n", strlen(""));
  printf("TRY 1.3 : [11] [%ld]\n", strlen("tototodjkli"));
  printf("-----------------------------------------------------------------\n");
  printf("TEST 2 - strchr:\n");
  printf("TRY 2.1 : [t] [%c]\n", *strchr("toto", 't'));
  printf("TRY 2.2 : [o] [%c]\n", *strchr("toto", 'o'));
  if (strchr("toto", 'k') == NULL)
    printf("TRY 2.3 : [NULL] [NULL]\n");
  else
    printf("TRY 2.3 : [NULL] [NOT NULL]\n");
  if (strchr("", 'k') == NULL)
    printf("TRY 2.4 : [NULL] [NULL]\n");
  else
    printf("TRY 2.4 : [NULL] [NOT NULL]\n");
  printf("-----------------------------------------------------------------\n");
   printf("TEST 5 - strcmp:\n");
  printf("TRY 5.1 : [%d] [%d]\n", strcmp("1234", "1234"), strcmp("1234", "1234"));
  printf("TRY 5.2 : [%d] [%d]\n", strcmp("12345", "1234"), strcmp("12345", "1234"));
  printf("TRY 5.3 : [%d] [%d]\n", strcmp("1234", "12345"), strcmp("1234", "12345"));
  printf("TRY 5.4 : [%d] [%d]\n", strcmp("12345", ""), strcmp("12345", ""));
  printf("TRY 5.5 : [%d] [%d]\n", strcmp("", "1"), strcmp("", "1"));
  printf("TRY 5.6 : [%d] [%d]\n", strcmp("abc", "abbcde"), strcmp("abc", "abbcde"));
  printf("TRY 5.7 : [%d] [%d]\n", strcmp("abc", "bbbbcde"), strcmp("abc", "bbbbcde"));
  strcmp(NULL, "jk");
  printf("TRY 5.8 : [DON'T SEG FAULT]\n");
  strcmp("hj", NULL);
  printf("TRY 5.9 : [DON'T SEG FAULT]\n");

}