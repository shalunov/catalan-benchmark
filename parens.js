#!/usr/bin/env node
'use strict';

function _parens(prefix, left, right) {
    if (!left && !right) console.log(prefix);
    if (left) _parens(prefix+'(', left-1, right);
    if (right > left) _parens(prefix+')', left, right-1);
}

function parens(n) {_parens('', n, n)}

parens(parseInt(process.argv[2]))
