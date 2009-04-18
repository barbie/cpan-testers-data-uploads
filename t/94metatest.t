use Test::More;

# Skip if doing a regular install
plan skip_all => "Author tests not required for installation"
    unless ( $ENV{AUTOMATED_TESTING} );

eval "use Test::CPAN::Meta 0.12";
plan skip_all => "Test::CPAN::Meta 0.12 required for testing META.yml" if $@;

plan no_plan;

my $yaml = meta_spec_ok(undef,undef,@_);

use CPAN::Testers::Data::Uploads;

is($yaml->{version},$CPAN::Testers::Data::Uploads::VERSION,
    'META.yml distribution version matches');

if($yaml->{provides}) {
    for my $mod (keys %{$yaml->{provides}}) {
        is($yaml->{provides}{$mod}{version},$CPAN::Testers::Data::Uploads::VERSION,
            "META.yml entry [$mod] version matches");
    }
}
