#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: csv2rem.pl
#
#        USAGE: ./csv2rem.pl  
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
#      CREATED: 05.09.2014 22:21:15
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";

open(my $data, '<', $file) or die "Could not open '$file' $!\n";

while (my $line = <$data>) {
chomp $line;

my @fields = split ";" , $line;
print "REM $fields[2]-$fields[1]-$fields[0] +10 $fields[6] $fields[10] %b\n";
}
