use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";

my @primeNum = (2, 3, 5, 7, 11, 13, 17);

my @info = ("Zuhair ", "Easybook ", 24 , 1.72);
say @info;
$info[4] = " Perlis";
say @info;

for my $info1 (@info){
    say $info1;
}

foreach my $num (@primeNum){
    say $num;
}

#shortcuts
for (@info){
    say $_;
}

#make new array from existing one
my @my_company = @info[1,4];
say @my_company;

#count no of elements
my $item = scalar @info;
say $item;

#break elements into variable
my ($f_name, $address, $age, $height, $state) = @info;
say $f_name;

#pop last element
say "Popped Value : ", pop @primeNum;

#push value into last element
say "Push value ", push @primeNum, 19;

say @primeNum;