#!/usr/bin/perl

# input line format: wordform humanic_count automatic_count
# with AUTT and HUMT constants for total number of automatic and humanic words,
# write (humanic_count / HUMT) / (automatic_count / AUTT)

use 5.010;
use strict;
use warnings;
use utf8;

my $HUMT = 620615;
my $AUTT = 7574994;
my $w = $AUTT / $HUMT;

while (<>) {
    chomp;
    my ($wf, $hum, $aut) = split / /;
    say join ' ', $wf, $hum, $aut, $w * $hum / $aut;
}
