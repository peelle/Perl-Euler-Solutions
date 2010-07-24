#!/usr/bin/env perl

use Modern::Perl;

# Got rid of intermediat vars
# runs in a minute or two.

my $sum = 0;
foreach my $number ( 1..10000 ) {
	$sum += $number if amicable_pair( $number );
}

say $sum;


sub sopd { # sum of propper divisors
	# $_[0] == number
	# $_[1] == divisor
	# $_[2] == sum
	$_[1] = $_[1] // $_[0] - 1; 
	
	return 1 unless $_[0] > 1; 
	return $_[2] unless $_[1];

	$_[2] += $_[1] unless $_[0] % $_[1];

	--$_[1];
	goto &sopd;
}

sub amicable_pair {
	return ( $_[0] != sopd( $_[0] ) 
		and sopd( sopd( $_[0] ) ) == $_[0] )
		? 1
		: 0;
}
