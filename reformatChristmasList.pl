#!/usr/bin/perl -w
# use strict;

# use "chmod u+x" to make this executable!
#http://www.comp.leeds.ac.uk/Perl/basic.html


# TO USE THIS SCRIPT, pipe addresss book into STDIN
#  Address book should be formatted like this:
#### Single Line ############ Person's Name
#### Single Line ############ Street Address Line 1
#### Zero or more Lines ##### Street Address Line N
#### Single Line ############ City, STATE zipcode
#### One or more Lines ######  (newlines separating entries)
#
#The output will look like this:
###  Person's Name |  Street Address Line 1  (, Street Address Line 2, ... Line N )  | City, STATE Zipcode
# Basically, merge the whole entry onto one line, with newlines replaced by |

my $temp = "";
open(NEWFILE,+<newAddressFile.txt.);

while(<>) {
   my $input = $_;
   my $strlen = length($input);
   if ($strlen > 0 ) {
   
   }
   

}

