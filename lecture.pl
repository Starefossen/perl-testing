#!/usr/bin/perl
use strict;
use warnings;

my $msg = <<'EOF';

Velkommen!

EOF

$msg = "banan";

print $msg.'\n';

if ($msg =~ '^banan$') {
	print "REGEXP FOUND!\n";
}

# STRINGS
# ne = not equls
# eq = equeals
if ($msg eq "banan") {
	print "\$msg equals banan\n";
}

my @array = ('per', 'paal');
my @array2 = (('foo', 'bar'));

