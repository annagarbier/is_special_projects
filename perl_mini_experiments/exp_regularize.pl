#!/usr/bin/perl
use strict;
use warnings;

use Path::Tiny;
use autodie; # Die if problem reading or writing a file

# Open file to read
my $file_in = path("text_irregular_sentence.txt");
my $file_in_handle = $file_in->openr_utf8();

# Read in the entire contents of file and print
my $content = $file_in->slurp_utf8();
print("\nOLD: ".$content);

# Make replacements and print
$content =~ s/feet/foots/g;
$content =~ s/went/goed/g;
$content =~ s/took/taked/g;
print("NEW: ".$content."\n");
