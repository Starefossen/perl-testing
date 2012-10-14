#!/usr/bin/perl
use strict;
use warnings;
use LWP::Simple;

my $base = 'http://www.apple.com/stevejobs/messages/';
my $file;
my $absolute_path = '/Users/hanskristian/Sites/HTML5/files/stevejobs/messages/';
my $content;


for (my $i = 0; $i < 1000000; $i++) {
 	$file = $i.'.json';
	$content = get $base.$file;
	
	if (!defined $content) {
		print '$i = '.$i;
		exit;
	}
	
	open FILE, '>'.$absolute_path.$file or die $!;
	print FILE $content;
	close FILE;
}
