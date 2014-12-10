package helper;
use utf8;
use strict;
use warnings;

sub import {
    my ($class) = @_;

    utf8->import;
    strict->import;
    warnings->import;

    my ($package, $file) = caller;

    my $code = qq[
        package $package;

        use Test::More;
    ];

    eval $code;
    die $@ if $@;
}

1;
