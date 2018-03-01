use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";

#sub routine is like a function

sub get_random {
    return int(rand 11);
}

say "Random number = ", get_random();

sub get_random_max{
    my ($max_num) = @_;

    $max_num ||= 11;

    return int {rand $max_num};
}
say "Random number = ", get_random_max(100);

sub get_sum {
    my ($num_1, $num2)= @_;

    $num_1 ||=1;
    $num_2 ||=1;

    return $num2 + $num_1;
}



