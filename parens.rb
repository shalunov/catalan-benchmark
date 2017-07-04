#!/usr/bin/env ruby

def _parens(prefix, left, right)
    if left == 0 and right == 0
        puts prefix
        return
    end
    _parens(prefix+'(', left-1, right) if left > 0
    _parens(prefix+')', left, right-1) if right > left
end

def parens(n)
    _parens('', n, n)
end

parens(ARGV[0].to_i)
