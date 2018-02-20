use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

#scalar data type

my $name = 'Jon Snow';

my ($age, $home) = (30, 'Castle Black');

my $jon_info = "$name is $age years old and lives at $home\n";

print $jon_info;

my $title = <<"END";
King of the Andals,
Lord of the Seven Kingdoms 
and Protector of the Realm
END

say $title;

my $big_int = 111111111111111111111;

# %c : Character
# %s : string
# %d : Decimal
# %u : Unsigned integer
# %f : Floating point (Decimal Notation)
# %e : Floating point (Scientific Notation)

printf("%u \n", $big_int + 1);

my $big_float = .101;
printf("%.16f \n", $big_float + 99);

#swap

my $first = 100;
my $second = 20;

($first, $second) = ($second, $first);

say "$first $second";



