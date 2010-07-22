#!/usr/bin/env perl

use Modern::Perl;
use Data::Dumper;
use List::Util qw(sum);

my @fib_list = (1, 2); # two previous fibbonacci numbers.

fibbonacci(4000000, \@fib_list); 

@fib_list = grep $_ % 2 == 0, @fib_list;

say sum(@fib_list);


sub fibbonacci {
	my ($limit, $fib_list) = @_;

	# sum of the previous two fibbonacci numbers.
	my $new_fib = $fib_list->[-2] + $fib_list->[-1];

	return if $limit <= $new_fib ;
	push( @$fib_list, $new_fib );
	goto &fibbonacci; # tail recursion
}

__END__

Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

Find the sum of all the even-valued terms in the sequence which do not exceed four million.
