#!/usr/bin/env perl -l

sub _parens {
    my ($prefix, $left, $right) = @_;

    if ($left == 0 and $right == 0) {
        print $prefix;
        return
    }
    _parens($prefix.'(', $left-1, $right) if $left > 0;
    _parens($prefix.')', $left, $right-1) if $right > $left
}

sub parens {_parens('', $_[0], $_[0])}

parens($ARGV[0])
