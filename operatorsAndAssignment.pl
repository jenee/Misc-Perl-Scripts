#!/usr/bin/perl -w
# use strict;

# use "chmod u+x" to make this executable!
#http://www.comp.leeds.ac.uk/Perl/basic.html


$a = 1 + 2;	# Add 1 and 2 and store in $a
print "a = ".$a."\n";
$a = 3 - 4;	# Subtract 4 from 3 and store in $a
print "a = ".$a."\n";
$a = 5 * 6;	# Multiply 5 and 6
print "a = ".$a."\n";
$a = 7 / 8;	# Divide 7 by 8 to give 0.875
print "a = ".$a."\n";
$a = 9 ** 10;	# Nine to the power of 10
print "a = ".$a."\n";
$a = 5 % 2;	# Remainder of 5 divided by 2
print "a = ".$a."\n";
++$a;		# Increment $a and then return it
print "a = ".$a."\n";
$a++;		# Return $a and then increment it
print "a = ".$a."\n";
--$a;		# Decrement $a and then return it
print "a = ".$a."\n";
$a--;		# Return $a and then decrement it
print "a = ".$a."\n";
	
$B = "Hello ";
$C = "World!\n";
$A = $B . $C;	# Concatenate $b and $c
print "A = $A \n";
$C = 5;
$A = $B x $C;	# $b repeated $c times
print "A = .$A \n";




