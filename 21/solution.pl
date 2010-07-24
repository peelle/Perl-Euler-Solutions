#!/usr/bin/env perl

use Modern::Perl;

# This solution took 3-4 minutes to run on my machine

my $sum = 0;
foreach my $number ( 1..10000 ) {
	$sum += $number if ( amicable_pair( $number ) );
}

say $sum;


sub sopd { # sum of propper divisors
	my $number = shift;
	my $divisor = shift // $number - 1; 
	my $sum = shift || 0;
	
	return 1 unless $number > 1; # 1 is only divisable by itself and 0
	return $sum unless $divisor; # <3 The Little Schemer

	$sum += $divisor unless $number % $divisor;

	@_ = ($number, ($divisor - 1), $sum);
	goto &sopd;
}

sub amicable_pair {
	return ( $_[0] != sopd( $_[0] ) 
		and sopd( sopd( $_[0] ) ) == $_[0] )
		? 1
		: 0;
}

__END__

Let d(n) be defined as the sum of proper divisors of n (numbers less than n 
which divide evenly into n).
If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and 
each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 
55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 
71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
