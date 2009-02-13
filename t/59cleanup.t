#!perl

use strict;
use warnings;
$|=1;

use Test::More tests => 2;
use File::Path;

for my $d ('t/_DBDIR') {
    ok( rmtree( $d ), "removed '$d'" );
    ok( ! -d $d,      "removed '$d' verified" );
}
