#!/usr/bin/perl
# CSV zu Remind
# Version 1

use strict;
use warnings;
use DateTime;

my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";

open(my $data, '<', $file) or die "Could not open '$file' $!\n";

while (my $line = <$data>) {
chomp $line;

my @fields = split ";" , $line;

my $start = DateTime->new(
    day   => $fields[0],
    month => $fields[1],
    year  => $fields[2],
);

my $stop = DateTime->new(
    day   => $fields[3],
    month => $fields[4],
    year  => $fields[5],
);


while ($start <= $stop) {
    print "REM ", $start->ymd, " $fields[6]\n";
    $start->add(days => 1);
}

}
