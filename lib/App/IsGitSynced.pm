package App::IsGitSynced;

=encoding UTF-8

=head1 NAME

App::IsGitSynced - script to find out if the local git repos are fully synced

=head1 VERSION

Version 0.04

=head1 SYNOPSIS

is_git_synced [options] dir1 [dir2 ...]

 Options:

      --quiet           Script will not output anything
      --only_errors     Script will write only dirs with errors
      --ignore_missing  Will ignore missing dirs
      --show_ok         Show 'ok' message if everthing is synced
      --help            Show this message
      --version         Show version number

Script checks every specified dir if it is a git repo and it has no local
changes that are not in remote repository origin. Script by default will
output information about every checking dir in the separate line. The exit
status will be 0 if everything is synced and 1 otherwise.

Project url: https://github.com/bessarabov/App-IsGitSynced

=head1 AUTHOR

Ivan Bessarabov, C<< <ivan@bessarabov.ru> >>

=head1 SOURCE CODE

The source code for this module is hosted on GitHub
L<https://github.com/bessarabov/App-IsGitSynced>

=head1 BUGS

Please report any bugs or feature requests in GitHub Issues
L<https://github.com/bessarabov/App-IsGitSynced/issues>

=head1 LICENSE AND COPYRIGHT

Copyright 2012 Ivan Bessarabov.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=begin comment

Subs that check git repo

They return 2 values: 1) $check_status (from %STATUSES) 2) $fail_text that
should be printed

=end comment


=cut

our $VERSION = 0.04;

1;