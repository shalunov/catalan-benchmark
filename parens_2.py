#!/usr/bin/env python

import sys


def _parens(prefix, left, right):
    if left == 0 and right == 0: sys.stdout.write(prefix)
    if left > 0: _parens(''.join([prefix, '(']), left-1, right)
    if right > left: _parens(''.join([prefix, ')']), left, right-1)


def parens(n):
    "Print all balanced combinations of n parens."
    _parens('', n, n)


parens(int(sys.argv[1]))
