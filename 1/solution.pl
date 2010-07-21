#!/usr/bin/env perl

use Modern::Perl;

my $sum_of_multiples = 0;

foreach my $number ( 0..999 ) {
	next if ( $number % 3 and $number % 5 );
	$sum_of_multiples += $number;
}

say $sum_of_multiples;
