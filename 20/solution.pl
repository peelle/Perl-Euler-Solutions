#!/usr/bin/env perl

use Modern::Perl;
use bigint;
use List::Util qw(sum);

my $exponential = 100;

$exponential *= $_ foreach 1..$exponential;

say sum split //, $exponential;;

__END__

n! means n  x (n - 1)  x ...  x 3  x 2 x 1

Find the sum of the digits in the number 100!
