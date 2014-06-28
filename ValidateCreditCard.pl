#!/usr/bin/perl
use strict;
use warnings;
use Scalar::Util qw(looks_like_number);

# Declare credit card array	
my @CreditCard = (
"", # Empty string.
"8910-1234-5678-6543", # Valid card number
"OOOO-9123-4567-0123"); # Card number with four leading letter O's

# Foreach loop to look through the @CreditCard array and search
# for invalid credit card numbers.
foreach my $CardNumber (@CreditCard){
	if($CardNumber eq ""){
		print "This Credit Card Number is invalid because it contains an empty string.\n";
	}
	else{	
		my $CreditCardNumber = $CardNumber;		
		$CreditCardNumber =~ s/-//g;			
		$CreditCardNumber =~ s/ //g;		
		if(!looks_like_number($CreditCardNumber)){
			print "Credit card Number " . 
			$CreditCardNumber . 
			" is not a valid Credit Card number because it contains a non-numeric character.\n";
		}
		else{
			print "Credit Card Number " .
				$CreditCardNumber .
				" is a valid Credit Card number.\n";
		} 
	} 
} 
