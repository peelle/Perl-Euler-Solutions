#!/usr/bin/env perl

use Modern::Perl;
use bigint;
use List::Util qw( sum );


my $sum = 0;
foreach ( 2 .. 1000000) { # made an uneducated assumption that pow 5 would not exceed 6 digits.
	if ( sopod($_, 5) ) { # sopod( number, power)
		$sum += $_;
		say "Current Sum = $sum, by adding $_";
	}
}

sub sopod { # Sum of power of digits ... checker
	my @digits = split //, $_[0]; # sum
	$_ = $_**$_[1] foreach @digits; # $_[1] power
	return  ( $_[0] == sum( @digits ) ) ? 1 : 0;
}


__END__

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.


