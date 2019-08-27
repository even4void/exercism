#include <stdio.h>
#include <string.h>
#include "hello_world.h"

const char *hello(void)
{
  static char str[15];
  strcpy(str, "Hello, World!");
  return str;
}
