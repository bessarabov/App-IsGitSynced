#!perl -T

use strict;
use warnings;

use Test::CheckManifest 0.9;
ok_manifest(
    {
        filter => [
            qr{TODO},
            qr{\.git/},
            qr{\.travis\.yml},
            qr{generate_pod_and_readme_from_script\.pl},
            qr{xt/},
        ],
    }
);
