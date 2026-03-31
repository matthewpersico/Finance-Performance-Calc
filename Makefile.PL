use 5.006001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'Finance::Performance::Calc',
    VERSION_FROM => 'lib/Finance/Performance/Calc.pm',    # finds $VERSION
    PREREQ_PM    => {},                                   # e.g., Module::Name => 1.1
    (
        $] >= 5.005
        ?                                                 ## Add these new keywords supported since 5.005
          (
            ABSTRACT_FROM => 'lib/Finance/Performance/Calc.pm',     # retrieve abstract from module
            AUTHOR        => 'Matthew Persico <persicom@cpan.org'
          )
        : ()
    ),
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources   => {
            repository => {
                type => 'git',
                url  => 'https://github.com/matthewpersico/Finance-Performance-Calc.git',
                web  => 'https://github.com/matthewpersico/Finance-Performance-Calc'
            },
            bugtracker => {
                web => 'https://github.com/matthewpersico/Finance-Performance-Calc/issues'
            },
            homepage => 'https://github.com/matthewpersico/Finance-Performance-Calc'
        },
    },
);
