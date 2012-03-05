#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';
use 5.010;
use Data::Printer;

use Pod::Select;
use File::Slurp;
use IO::Scalar;
use Carp;

sub get_pod_from {
    my ($file) = @_;

    my $pod;
    my $SH = new IO::Scalar \$pod;

    podselect({-output => $SH}, 'bin/is_git_synced');

    return $pod

}

sub get_version_from {
    my ($file) = @_;

    my $content = read_file($file);

    foreach my $line (split /\n/, $content) {
        return $line if $line =~ /VERSION\s+=/;
    }

    croak 'No $VERSION found';

    return 1;
}

my $file = 'bin/is_git_synced';
my $package = 'App::IsGitSynced';

my $pod     = get_pod_from($file);
my $version = get_version_from($file);

$pod =~ s/is_git_synced/$package/;

my $content = "package $package;

$pod
=cut

$version

1;";

`pod2text $file > README`;

write_file('lib/App/IsGitSynced.pm', $content);
