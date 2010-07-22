#!/usr/bin/env perl

use Modern::Perl;

# They further went on to explain, every 3rd fibbonacci number is even.
# Based on that you don't have to check for eveness you can assume.

my $limit = 4000000;
my $sum = 0;
my $first_num = 1;
my $second_num = 1;
my $third_num = $first_num + $second_num;

while ($third_num < $limit ) {
	$sum += $third_num;
	$first_num = $second_num + $third_num;
	$second_num = $third_num + $first_num; # the new first num
	$third_num = $first_num + $second_num; # the new first and second num
}

say $sum;
