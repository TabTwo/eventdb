#!/usr/bin/perl
# CSV zu CSV für ikiwiki
# Version 1


use strict;
use warnings;

my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";

open(my $data, '<', $file) or die "Could not open '$file' $!\n";

print "# T;# M;# J; ;# T;# M;# J;# Was;# Location;# Stadt;# Land\n";

while (my $line = <$data>) {
chomp $line;

my @fields = split ";" , $line;
print "$fields[0];$fields[1];$fields[2];-;$fields[3];$fields[4];$fields[5];[$fields[6]]($fields[10]);$fields[7];$fields[8];$fields[9];\n";
}
