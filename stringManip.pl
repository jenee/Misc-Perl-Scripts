#!/usr/bin/perl -w
# use strict;

# use "chmod u+x" to make this executable!
#http://www.comp.leeds.ac.uk/Perl/basic.html
#
# http://www.troubleshooters.com/codecorn/littperl/perlstringnum.htm

my $stringA = "Apple";
my $stringB = "Banana";
my $stringC = "Crepes";
my $stringD = "Dr. Doofenschmirtz";
my $stringE = "Agent Perry the Platypus";

my $strlen = length($stringA);

printf "Length of string \"".$stringA."\" : ".$strlen."\n";

printf "Concatinate strings with dots: ".$stringA." and ".$stringB." ".$stringC."s\n";

printf "------Now we do substrings!------\n";
printf "(Remove N characters from the front of the string)\n";
printf "******** He likes to be called ".$stringD.", and hates it when people just call him ".substr($stringD, 4)."\n";

printf "(Remove all but the final N characters from the string)\n";
printf "******** Phineas and Ferb have a pet named ".substr($stringE, -18)."\n";

printf "(Remove the N final characters from the string)\n";
printf "******** Unbeknownst to Phineas and Ferb, their pet is really ".substr($stringE, 0, -17).", secret agent extraordinaire!\n";

printf "(Remove all but the first N chaaracters from the string)\n";
printf "******** But to them, he will always be their beloved pet, ".substr($stringE, 0, 5)." or no agent! \n";



printf "\n\n-----Now we do string comparisons!----\n";
print "Gimme a word! Type it here: ";
chomp( my $word = <> );
if( $word gt $stringA ) {
   printf "Your string ".$word." is greater than ".$stringA.".\n";
} else {
   printf "Your string ".$word." is not greater than ".$stringA.".\n";
}

if( $word ge $stringB ) {
   printf "Your string ".$word." is greater than or equal to ".$stringB.".\n";
} else {
   printf "Your string ".$word." is not greater than or equal to ".$stringB.".\n";
}

if( $word lt $stringC ) {
   printf "Your string ".$word." is less than ".$stringC.".\n";
} else {
   printf "Your string ".$word." is not less than ".$stringC.".\n";
}

if( $word lt $stringD ) {
   printf "Your string ".$word." is less than or equal to ".$stringD.".\n";
} else {
   printf "Your string ".$word." is not less than or equal to ".$stringD.".\n";
}

if( $word eq "Jenee" ) {
   printf "Your string ".$word." is equal to my name, Jenee. YOU ARE AWESOME! \n";
} else {
   printf "Your string ".$word." is not equal to my name, Jenee.  How sad. \n";
}

if( $word ne "Hitler" ) {
   printf "Your string ".$word." is not equal to Hitler. Good for you \n";
} else {
   printf "Your string ".$word." is 'Hilter'. Why would you type that? \n";
}
