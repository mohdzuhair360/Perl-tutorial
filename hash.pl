use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";

#initialize hash
my %employees = (
    "Sue"=>35,
    "Paul"=> 43,
    "Sam"=>39
);

#access hash value
printf("Sue is %d \n", $employees{Sue});

#add new key and value to a hash
$employees{Frank}= 44;


#print hash using loop
while(my ($k, $v) = each %employees){print "$k $v\n"}

#slice data from hash into a new array
my @ages = @employees{"Sue", "Sam"};
say @ages;

#covert hash into array
my @hash_array = %employees;

#delete a key and its value
delete $employees{'Frank'};
while(my ($k, $v)=each %employees){print "$k $v\n"}

#check a key exist or not
say ((exists $employees{'Sam'})? "Sam is here" : "Screw Sam");

#cycle through keys
for my $key (keys %employees){
    if($employees{$key}==35){
        say "Hi Sue";
    }
}