#!/bin/perl -w

use strict;
use feature 'say';

sub Remove_leading_zeros{
	my $input = shift;

	return 'err' if $input !~ m/\A\d+\Z/;

	$input =~ s/\A0*//;

	return $input
}

say(Remove_leading_zeros('00123')); # 123
say(Remove_leading_zeros('-123')); # err
say(Remove_leading_zeros('abc')); # err

