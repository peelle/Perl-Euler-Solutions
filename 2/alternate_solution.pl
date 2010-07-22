#!/usr/bin/env perl

use Modern::Perl;

# This is the basic solution suggested by Project Euler.

my $limit = 4000000;
my $sum = 0;
my $first_num = 1;
my $second_num = 1;

while ( $second_num < $limit ) {
	# Even check and summing
	$sum = $sum + $second_num if ($second_num % 2) == 0;
	
	# Creating the next number
	my $h = $first_num + $second_num;
	$first_num = $second_num;
	$second_num = $h;
}

say $sum;
