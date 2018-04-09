#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use utf8;

my %dict;

while (<>) {
    /wordform"?\s*:\s*"([^"]*)"/ and $dict{$1}++;
}

my $n = 0;
my @sorted = sort keys %dict;

print "$_ $dict{$_}\n" for @sorted;
