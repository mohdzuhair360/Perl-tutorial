use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";

my $i = 1;

my $age_old = 18;

given ($age_old){
    when($_ > 16){
        say "Drive";
        continue;

    }
}