#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use utf8;

my @lines;

while (<>) {
    (undef, undef, undef, my $rat) = split / /;
    push @lines, [+$rat, $_];
}

print for map $_->[1], sort {$b->[0] <=> $a->[0]} @lines;
