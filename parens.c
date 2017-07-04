#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

int size = 0;
char stack[64];

void _parens(int left, int right)
{
    if (left == 0 && right == 0)
        puts(stack);
    if (left > 0) {
        stack[size-left-right] = '(';
        _parens(left-1, right);
    }
    if (right > left) {
        stack[size-left-right] = ')';
        _parens(left, right-1);
    }
}

void parens(int n)
{
    assert(n < 32);
    size = 2*n;
    stack[size] = '\0';
    _parens(n, n);
}

int main(int argc, char *argv[])
{
    parens(atoi(argv[1]));
    exit(EXIT_SUCCESS);
}
