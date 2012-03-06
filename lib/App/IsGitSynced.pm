package App::IsGitSynced;

=encoding UTF-8

=head1 NAME

App::IsGitSynced - script to find out if the local git repo is fully synced

=head1 VERSION

Version 0.02

=head1 SYNOPSIS

is_git_synced [options] dir1 [dir2 ...]

 Options:

      --quiet           Script will not output anything
      --only_errors     Script will write only dirs with errors
      --help            Show this message
      --version         Show version number

Script checks every specifeid dir if it is a git repo and it has ho local
changes that are not in remote repsitory origin. Script by default will output
information about every checked dir in separate line. The exit status will
be 0 if everything is synced and 1 otherwise.

Project url: https://github.com/bessarabov/App-IsGitSynced

=head1 AUTHOR

Ivan Bessarabov, C<< <ivan@bessarabov.ru> >>

=head1 SOURCE CODE

The source code for this module is hosted on GitHub L<https://github.com/bessarabov/App-IsGitSynced>

=head1 BUGS

Please report any bugs or feature requests to C<bug-app-isgitsynced at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=App-IsGitSynced>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

Or you can use GitHub Issues L<https://github.com/bessarabov/App-IsGitSynced/issues>

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc App::IsGitSynced


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=App-IsGitSynced>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/App-IsGitSynced>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/App-IsGitSynced>

=item * Search CPAN

L<http://search.cpan.org/dist/App-IsGitSynced/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 Ivan Bessarabov.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

our $VERSION = 0.02;

1;