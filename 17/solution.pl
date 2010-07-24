#!/usr/bin/env perl

use Modern::Perl;

use Lingua::EN::Nums2Words; # CPAN: Perl's killer feature :-)

my $sum;

foreach (1..1000) {
	my $word = num2word($_);
	$word =~ s/[^A-Za-z]*//g;
	$sum += length($word);
}

# The Lingua::EN::Nums2Words is US english not British English so "and" is omitted.
# The "and" occurs 99/100 times starting at 100 and stopping at 999 
say $sum + ( 3 * 99 * 9);

__END__

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then 
there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, 
how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) 
contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of 
"and" when writing out numbers is in compliance with British usage.
