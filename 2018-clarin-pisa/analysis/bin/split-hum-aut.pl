#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use utf8;

my $hum_fn = shift @ARGV;
my $aut_fn = shift @ARGV;
open my $hum_fh, '>', $hum_fn or die "Cannot open hum file $hum_fn: $!";
open my $aut_fh, '>', $aut_fn or die "Cannot open aut file $aut_fn: $!";

local $/ = '}';
while (<>) {
    if (/occurrence/) {
        if (/humanic/) {
            print {$hum_fh} $_;
        }
        else {
            print {$aut_fh} $_;
        }
    }
}
