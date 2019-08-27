#include "acronym.h"

char *abbreviate(const char *phrase) {
    char str = phrase;
    for (int i = 0; str[i] != '\0'; i++) {
        if (i == 0) {
            if (str[i] >= 'a' && str[i] <= 'z')
		        str[i] = str[i] - 32;
		    continue;
        }
    }
}

