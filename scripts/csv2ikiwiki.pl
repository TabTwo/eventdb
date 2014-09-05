#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: csv2ikiwiki.pl
#
#        USAGE: ./csv2ikiwiki.pl  
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
#      CREATED: 05.09.2014 22:19:18
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";

open(my $data, '<', $file) or die "Could not open '$file' $!\n";

print "# T;# M;# J; ;# T;# M;# J;# Was;# Location;# Stadt;# Land\n";

while (my $line = <$data>) {
chomp $line;

my @fields = split ";" , $line;
print "$fields[0];$fields[1];$fields[2];-;$fields[3];$fields[4];$fields[5];[$fields[6]]($fields[10]);$fields[7];$fields[8];$fields[9];\n";
}
