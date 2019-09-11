#!/usr/bin/perl
use strict;
use warnings;

use Path::Tiny;
use autodie; # Die if problem reading or writing a file

my $file = path("text_growing_file.txt");

# Get a file_handle (IO::File object) you can append to
# with a UTF-8 encoding layer
my $file_handle = $file->opena_utf8();

my @list = ("--new run--", "one fish", "two fish", "red fish", "blue fish");

foreach my $line ( @list ) {
    # For each item in list, append as a new line in file
    $file_handle->print($line . "\n")
}

print("\nTo view growing file: cat text_growing_file.txt\n\n");