#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>

void _parens(char *prefix, int left, int right)
{
    if (left == 0 && right == 0) {
        puts(prefix);
        return;
    }

#define APPEND(c) \
    char *s = alloca(32); \
    char *p = prefix, *q = s; \
    while (*p) *q++ = *p++; \
    *q++ = c; \
    *q = '\0'

    if (left > 0) {
        APPEND('(');
        _parens(s, left-1, right);
    }
    if (right > left) {
        APPEND(')');
        _parens(s, left, right-1);
    }
}

void parens(int n)
{
    assert(n < 32);
    _parens("", n, n);
}

int main(int argc, char *argv[])
{
    parens(atoi(argv[1]));
    exit(EXIT_SUCCESS);
}
