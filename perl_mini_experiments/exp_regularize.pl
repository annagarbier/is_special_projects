#!/usr/bin/perl
use strict;
use warnings;

use Path::Tiny;
use autodie; # Die if problem reading or writing a file

# Establish file names
my $file_in = path("text_irregular_sentence.txt");

# Open files to read and write, respectively
my $file_in_handle = $file_in->openr_utf8();

# Read in the entire contents of file
my $content = $file_in->slurp_utf8();
print("\nOLD: ".$content);

# Make replacements
$content =~ s/feet/foots/g;
$content =~ s/went/goed/g;
$content =~ s/took/taked/g;

print("NEW: ".$content."\n");
