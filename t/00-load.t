#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'App::IsGitSynced' ) || print "Bail out!
";
}

diag( "Testing App::IsGitSynced $App::IsGitSynced::VERSION, Perl $], $^X" );
