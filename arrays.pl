use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";

#create array of prime no
my @primeNum = (2, 3, 5, 7, 11, 13, 17);

#store multiple data type inside perl
my @info = ("Zuhair ", "Easybook ", 24 , 1.72);
say @info;

#assign new value by referencing index
$info[4] = " Perlis";
say @info;

#cycle through array using loop
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

#return first item with shift
say "First Item : ", shift @primeNum;

#add a value to the front
say "Unshifted Item ", unshift @primeNum, 2;

#print array and separate with coma
print join(", ", @primeNum), "\n";

#delete out value from array
say "Remove Index 0 - 2 ", splice @primeNum, 0, 3;  

print join(", ", @primeNum), "\n";

#join two or more list
print join " ", ('list', 'of', 'words', "\n") ;

#turn string into array
my $customers = "Sue Sally Paul";
my @cust_array = split / /, $customers;
say @cust_array;

print join (", ", @cust_array), "\n";

#reverse an array
@cust_array = reverse @cust_array;
say @cust_array;

#sort array/ reverse sort
@cust_array = reverse sort @cust_array;
say @cust_array;

my @number_array = (1,2,3,4,5,6,7,8);

#filter list
my @odds_array = grep {$_ % 2} @number_array;
print join (", ", @odds_array), "\n";

#multiply element of array
my @dbl_array = map {$_ * 2} @number_array;
print join (", ", @dbl_array), "\n";