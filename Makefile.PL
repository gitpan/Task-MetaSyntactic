
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "All Acme::MetaSyntactic themes at once",
  "AUTHOR" => "Philippe Bruhat (BooK) <book\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-MetaSyntactic",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Task::MetaSyntactic",
  "PREREQ_PM" => {
    "Acme::MetaSyntactic" => 0,
    "Acme::MetaSyntactic::Themes" => 0,
    "Acme::MetaSyntactic::Themes::Abigail" => 0,
    "Acme::MetaSyntactic::buzzwords" => 0,
    "Acme::MetaSyntactic::daleks" => 0,
    "Acme::MetaSyntactic::dune" => 0,
    "Acme::MetaSyntactic::errno" => 0,
    "Acme::MetaSyntactic::legobatman" => 0,
    "Acme::MetaSyntactic::legoharrypotter" => 0,
    "Acme::MetaSyntactic::legoindianajones" => 0,
    "Acme::MetaSyntactic::legolotr" => 0,
    "Acme::MetaSyntactic::legopiratesofthecaribbean" => 0,
    "Acme::MetaSyntactic::morning_musume" => 0,
    "Acme::MetaSyntactic::nethack" => 0,
    "Acme::MetaSyntactic::soviet" => 0,
    "Acme::MetaSyntactic::vim" => 0,
    "Acme::MetaSyntactic::xkcdcommon1949" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "1.028",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



