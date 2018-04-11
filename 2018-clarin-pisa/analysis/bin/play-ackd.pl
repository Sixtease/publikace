#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use utf8;

while (<>) {
    next if not /timestamp\D+(\d+)/;
    my $ts = $1;
    m{([^/]+)\.sub\.js};
    my $stem = $1;
    $ts--;
    system "mplayer -ss $ts /home/sixtease/kroupy/Music/Makon/all/mp3/$stem.mp3";
}
