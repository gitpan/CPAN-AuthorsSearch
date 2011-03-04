use strict;use warnings;
use Module::Build;

my $builder = Module::Build->new(
    sign              => 1,
    module_name       => 'CPAN::AuthorsSearch',
    license           => 'perl',
    dist_author       => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    dist_version_from => 'lib/CPAN/AuthorsSearch.pm',
    add_to_cleanup    => [ 'CPAN-AuthorsSearch-*' ],    
    build_requires    => {
        'Test::More'     => 0,
        'HTTP::Request'  => '1.40',
        'LWP::UserAgent' => '2.33',
        'HTML::Entities' => '1.35',
    },
);

$builder->create_build_script();