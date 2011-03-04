use strict;use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'CPAN::AuthorsSearch',
    AUTHOR        => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM  => 'lib/CPAN/AuthorsSearch.pm',
    ABSTRACT_FROM => 'lib/CPAN/AuthorsSearch.pm',
    dist          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean         => { FILES => 'CPAN-AuthorsSearch-*' },
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PREREQ_PM     => {
        'Test::More'     => 0,
        'HTTP::Request'  => '1.40',
        'LWP::UserAgent' => '2.33',
        'HTML::Entities' => '1.35',
    },
);