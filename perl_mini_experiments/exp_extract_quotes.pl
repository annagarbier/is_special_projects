#!/usr/bin/perl
use strict;
use warnings;

use Path::Tiny;
use autodie; # Die if problem reading or writing a file

# Establish file names
my $file_in = path("text_irish_fairy_tales.txt");

# Open files to read and write, respectively
my $file_in_handle = $file_in->openr_utf8();

# Read in the entire contents of file
my $content = $file_in->slurp_utf8();
my @quotes = $content =~ /(\".*\")/g;

# Print each extraction on a new line
foreach my $quote ( @quotes ) {
    print($quote."\n");
}
