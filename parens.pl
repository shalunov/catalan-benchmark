#!/usr/bin/env perl -l

sub _parens {
    my ($prefix, $left, $right) = @_;

    print $prefix unless $left or $right;
    _parens($prefix.'(', $left-1, $right) if $left > 0;
    _parens($prefix.')', $left, $right-1) if $right > $left
}

sub parens {_parens('', $_[0], $_[0])}

parens($ARGV[0])
