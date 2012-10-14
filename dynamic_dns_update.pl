#!/usr/bin/perl
use strict;
use warnings;
use LWP::Simple;

my $res;
my @matches;
my $pas 	= "foo";
my $domain 	= "1337fire.com";

$res = `prlctl list -a`; 

push @matches, [$1, $2, $3, $4]  while $res =~ /{([0-9a-z-]+)}\s+(\S+)\s+(\S+)\s+(.+)/g;

foreach (@matches) {
	print "Virtual Machine\n";
	print "ID: " . ${$_}[0] . "\n";
	print "Name: " . ${$_}[3] . "\n";
}

#use Data::Dumper;
#print Dumper(\@matches);

#urllib2.urlopen("http://dynamicdns.park-your-domain.com/update?host=%s&domain=%s&password=%s" % ("@", "YOURDOMAIN", "YOURPASSWORD"))