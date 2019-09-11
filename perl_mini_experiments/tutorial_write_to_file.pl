#!/usr/bin/perl
use strict;
use warnings;

use Path::Tiny; # Must first install Path::Tiny module (`cpanm Path::Tiny`)
use autodie; # Die if problem reading or writing a file

# Directory called /tmp
my $dir = path("/tmp");

# File called /tmp/write_to_file_output.txt
my $file = $dir->child("output_".time().".txt"); 

# Get a file_handle (IO::File object) you can write to
# with a UTF-8 encoding layer
my $file_handle = $file->openw_utf8();

# Store bits of text in an array
my @list = ('first', 'second', 'third', 'fourth', '...');

foreach my $line ( @list ) {
    # Add each bit of text to a new line in output file
    $file_handle->print($line . "\n");
}

# Show user where to find output file
print("\nTo view output: cat /tmp/output_".time().".txt\n\n")
