#include <string.h>
#include <ctype.h>
#include <stdbool.h>

void sanitize(char *str)
{
  unsigned long i = 0;
  unsigned long j = 0;
  char c;

  while ((c = str[i++]) != '\0') {
    if (isalpha(c)) str[j++] = tolower(c);
  }
  str[j] = '\0';
}

bool is_isogram(const char phrase[])
{
  char s[strlen(phrase)];
  strcpy(s, phrase);
  sanitize(s);
  int n = strlen(s);
  for (int i = 0; i < n-1; i++) {
    for (int j = i+1; j < n; j++) {
      if (s[i] > s[j]) {
        char tmp = s[i];
        s[i] = s[j];
        s[j] = tmp;
      }
    }
  }
  for (int i = 0; i < n; i++) { 
    if (s[i] == s[i+1]) 
      return false; 
  } 
  return true; 
}
