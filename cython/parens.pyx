#!/usr/bin/env python

import sys

cdef _parens(str prefix, int left, int right):
    if left == 0 and right == 0: print(prefix)
    if left > 0: _parens(prefix+'(', left-1, right)
    if right > left: _parens(prefix+')', left, right-1)

def parens(int n):
    "Print all balanced combinations of n parens."
    _parens('', n, n)
