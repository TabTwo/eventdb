#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: csv2rem-ics.pl
#
#        USAGE: ./csv2rem-ics.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ralph J.Mayer (rm), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 05.09.2014 22:20:45
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

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
