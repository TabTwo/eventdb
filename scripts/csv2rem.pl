#!/usr/bin/perl
# CSV zu CSV für ikiwiki
# Version 1


use strict;
use warnings;

my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";

open(my $data, '<', $file) or die "Could not open '$file' $!\n";

while (my $line = <$data>) {
chomp $line;

my @fields = split ";" , $line;
print "REM $fields[2]-$fields[1]-$fields[0] +10 $fields[6] $fields[10] %b\n";
}