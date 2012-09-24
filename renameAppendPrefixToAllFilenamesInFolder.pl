#!/usr/bin/perl -w
# renames all my resumes so that, instead of being dated Month-Day-Year, they're all YYYY-MM-DD
#
# Jenee Hughes
# Written: 10-24-2011
# use strict;

#while there are still files in the directory
while( <*> ) {
	$oldname = $_;
	$prefix = "piece";
	$prefixedName = "$prefix$oldname";
	rename $oldname, $prefixedName	

}
