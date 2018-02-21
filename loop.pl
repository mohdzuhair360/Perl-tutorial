use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch"; 

for(my $i = 0; $i < 10; $i++){
    say $i;
}

my $h = 1;

while($h < 10){
    if($h % 2 == 0){
        $h++;

        next;
    }

    if ($h == 7) 
    {
        last;
    }
    say $h;
    $h++;
    #last = break
}

my $random = int rand (20);
my $guess;

do{
    say "Guess the random number between 1-20";
    $guess = <STDIN>;

    if($guess < $random) 
    {
        say "The no is too low";
        
    }
    elsif($guess > $random)
    {
        say "The no is too high";
        
    } 
    else
    {
        say "Your answer is correct";
    }
    
}   while $guess != $random