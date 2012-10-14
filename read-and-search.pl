#!/usr/bin/perl
use strict;
use warnings;

my ($i, $content, $file_name);

my $absolute_path = '/Users/hanskristian/Sites/HTML5/files/stevejobs/messages/';

for ($i = 0; $i < 10974; $i++) {
	$file_name = $i.'.json';
	
	open FILE, "<".$absolute_path.$file_name;
	$content = do { local $/; <FILE> };
	
	if ($content =~ '("location":"")') {
		print $file_name."\n";
		print $content."\n\n\n"
	}

}