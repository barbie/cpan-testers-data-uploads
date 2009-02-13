use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'          => 'CPAN::Testers::Data::Uploads',
    'VERSION_FROM'  => 'lib/CPAN/Testers/Data/Uploads.pm',
    'PREREQ_PM'     => {

        'Class::Accessor::Fast'             => 0,
        'CPAN::DistnameInfo'                => 0,
        'CPAN::Testers::Common::Article'    => 0,
        'CPAN::Testers::Common::DBUtils'    => 0,
        'Config::IniFiles'                  => 0,
        'File::Basename'                    => 0,
        'File::Find::Rule'                  => 0,
        'File::Path'                        => 0,
        'File::Slurp'                       => 0,
        'Getopt::Long'                      => 0,
        'IO::File'                          => 0,
        'Net::NNTP'                         => 0,

        'Test::More'                        => 0,       # only for testing
        'Archive::Extract'                  => 0,       # only for testing
    },

    'PL_FILES'      => {},
    'INSTALLDIRS'   => 'site',
    NO_META         => 1,

    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT	=> 'CPAN Testers Uploads Database Generator',
       AUTHOR	=> 'Barbie <barbie@cpan.org>') : ()),
);
