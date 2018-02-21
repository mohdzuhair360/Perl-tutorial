use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";

my $long_string = "daenerys stormborn of house targaeryn";
say "Length of string ", length $long_string;

printf ("House is at %d \n", index $long_string, "House");

printf("First n is at %d \n", index $long_string, "n");
printf("Last n is at %d \n", rindex $long_string, "n");

my $long_string_1 = $long_string . ", Queen of the andals, first of her name, Khalessi.";
#printf ($long_string_1);
#say $long_string_1;

say "Index 9 through 18 : ", substr $long_string_1, 9, 9;

my $house = "Lannisters";

printf("Last characters is %s\n", chop $house);

my $no_newline = "No newLine\n";
chomp $no_newline;
print $no_newline;

#uppercase and lowercase

printf ("Uppercase : %s \n", uc $long_string);
printf ("Lowercase : %s \n", lc $long_string);
printf ("1st Uppercase : %s \n", ucfirst $long_string);
printf ("1st lowercase : %s \n", lcfirst $long_string);

#replace characters

$long_string =~ s/ /a /g;
say $long_string;

#repeat string
say my $two_times = $long_string x 2;

my @alphabets = ('a'.. 'z');
my @numbers = (1.. 20);

print join (", ", @alphabets), "\n";

print join (", ", @numbers), "\n";

my $letter = 'd';
say "Next letter : ", ++$letter;