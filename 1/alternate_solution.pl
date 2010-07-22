#!/usr/bin/env perl

#  A suggested Solution from Project Euler for problem 1;
use Modern::Perl;
use integer; # Using this So I don't have to round.

my $target = 999;


sub sum_div_by {
	my $n = shift;
	my $p = $target / $n;
	return $n * ( $p * ($p+1)) / 2;
}

say sum_div_by(3) + sum_div_by(5) - sum_div_by(15);
