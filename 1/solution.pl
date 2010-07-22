#!/usr/bin/env perl

use Modern::Perl;

# Straight forward iteration over each number
my $sum_of_multiples = 0;
 
foreach my $number ( 1..999 ) {
	# using modulus to filter
	next if ( $number % 3 and $number % 5 ); 
	$sum_of_multiples += $number;
}

say $sum_of_multiples;


__END__

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
