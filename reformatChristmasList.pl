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
open(NEWFILE,"<","ChristmasCardAddresses.txt");

my $isLastEmptyLine = 0;

while(<NEWFILE>) {
   my $input = $_;
   $input=~ s/^\s*(.*)\s*$/$1/;
   my $strlen = length($input);
   if ($strlen <= 0 ) {
      if( $isLastEmptyLine == 0 ) {
         print "\n"; #print "EMPTY";
      }
      $isLastEmptyLine = 1;
   } else {
      
   #   //if the line starts with a digit with only alphabet characters afterwards
   #      //then it's an address line
   #   //if the line ends with five digits, or five digits separated by four digits with a dash, 
   #      //then it's a zip code.
   #      //if there are characters preceding the zip code,
   #         //then those are City , state
   #         //the part preceeding the comma is a city
   #         //the part following the comma is the state
   #   //if the line has no digits
   #      //if it was immediately preceded by a blank space, 
   #         //then it's a name
   #      //if it has a comma in it, 
   #         // then it's a city-state pairing
   #         //the part preceeding the comma is a city
   #         //the part following the comma is the state
    
      print $input."\n";
      $isLastEmptyLine = 0;
   }
}

