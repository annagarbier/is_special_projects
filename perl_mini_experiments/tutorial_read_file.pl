#!/usr/bin/perl
use strict;
use warnings;

use Path::Tiny;
use autodie; # Die if problem reading or writing a file

my $file = path("text_about_perl.txt");

# openr_utf8() returns an IO::File object to read from
# with a UTF-8 decoding layer
my $file_handle = $file->openr_utf8();

# Read in one line at a time
while ( my $line = $file_handle->getline() ) {
    print $line;
}