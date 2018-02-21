use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch"; 


print "Enter name : ";
my $name = <STDIN>;
print "Enter job : ";
my $job = <STDIN>;
print "Enter level : ";
my $level = <STDIN>;
print "Enter no of working days this months : ";
my $days = <STDIN>;
print "Enter performance percentages target achieved : ";
my $target = <STDIN>;
print "Enter mileage of claims : ";
my $claims = <STDIN>;

#print "$job = '$job'";
chomp $job;
#default variable name has \n behind. chomp erase the new line

say "Dear Mr ", $name;
if (($job eq 'engineer') && ($level <3)){
    say "Your total salary = RM ", (100 * $days) + ($target * 5) + ($claims * 20);
}
elsif (($job eq 'engineer')&& ($level >=3 && $level <6)){
    say "Your total salary = RM ", (150 * $days) + ($target * 5) + ($claims * 20);
}
elsif (($job eq 'engineer')&& ($level >=6)){
    say "Your total salary = RM ", (200 * $days) + ($target * 5) + ($claims * 20);
}
elsif (($job eq 'clerk') && ($level <3)){
    say "Your total salary = RM ", (50 * $days) + ($target * 5) + ($claims * 20);
}
elsif (($job eq 'clerk')&& ($level >=3 && $level <6)){
    say "Your total salary = RM ", (80 * $days) + ($target * 5) + ($claims * 20);
}
elsif (($job eq 'clerk')&& ($level >= 6)){
    say "Your total salary = RM ", (110 * $days) + ($target * 5) + ($claims * 20);
}

unless ($days <=10){
    say "Too many absentees. You have been warned";
}
