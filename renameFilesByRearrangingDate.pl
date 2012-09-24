#!/usr/bin/perl -w
# renames all my resumes so that, instead of being dated Month-Day-Year, they're all YYYY-MM-DD
#
# Jenee Hughes
# Written: 10-24-2011
# Revised 09-24-2012
# use strict;

print "WARNING!\n";
print "Running this script may alter the files in your current directory!\n";
print "IT WILL RENAME FILES MATCHING A HARD-CODED PATTERN!\n";
print "Do you want your files renamed? If so, type \'yes\' to continue\n";
$userword = <STDIN>; # get input from STDIN
chomp $userword; # Remove newline character at the end
exit 0 if ($userword ne "yes"); # If string isn't "Yes", exit.

print "Running script....\n";
$filenamesTouched = 0;
#while there are still files in the directory
while( <*> ) {
	$oldname = $_;
	# if the old file name starts with a date x-x-#  (where x is 1 to 2 digits, and # is 1 to 4 digits)
	if($oldname =~ m/^(\d{1,2})-(\d{1,2})-(\d{1,4})(.+)/) {
      $filenamesTouched++;
      $m = $1;
		$d = $2;
		$y = $3;
		$theRest = $4;
		#print $oldname." -----> 1=$1; 2=$2; 3=$3; 4=$4\n";
		#print $oldname." -----> $y-$m-$d\_$theRest\n";
		$rearrangedName = "$y-$m-$d\_$theRest";
		print $oldname." -----> $rearrangedName\n";
		#$origRearrangedName = $rearrangedName;
	
		# make all years same number of digits, 4
		if($rearrangedName =~ m/^(\d{2})-(.+)/) {
			#if the year is two digits ; then we want to append 20 to the front, to make it 4 digits
			#   ex:    YY-MM-DD_**************   -->  20YY-MM-DD_**************
			#          09-03-15_RestOfFilename   -->  2009-03-15_RestOfFilename
			$finalName = "20".$rearrangedName;
			#print("****************************year padding : $finalName\n");
			$rearrangedName = $finalName;
			print("****************************year padding : $rearrangedName\n");
		}	
		
		# make all months same number of digits, 2
		if($rearrangedName =~ m/^(\d+)-(\d{1})-(.+)/ ) {
			# if the month is a single digit, append a leading zero
			#      YYYY-M-DD   ----->  YYYY-0M-DD
			$yyyy = $1;
			$month = $2;
			$rest = $3;
			$rearrangedName = $yyyy."-0".$month."-".$rest;
			print("***************************month padding : $rearrangedName\n");
		}
		
		# make all days same number of digits, 2
		if($rearrangedName =~ m/^(\d+)-(\d+)-(\d{1})(\D+.+)/ ) {
			# if the day is a single digit, append a leading zero
			#      YYYY-MM-D   ----->  YYYY-MM-0D
			$year= $1;
			$mm = $2;
			$day = $3;
			$restText = $4;
			$rearrangedName = $year."-".$mm."-0".$day.$restText;
			print("*****************************day padding : $rearrangedName\n");
		}
		rename $oldname, $rearrangedName	
	}
}
print "This script touched $filenamesTouched filenames\n";
