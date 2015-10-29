package Foo;
use Cache::Keys::DSL;

key 'foo';
keygen 'bar';

package main;
use strict;
use Test::More 0.98;

eval {
    import Foo qw/key_for_foo gen_key_for_bar/;
};
is $@, '', 'no error';

done_testing;

