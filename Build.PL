
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Create a nice formatted table using extended ASCII and ANSI colors",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Text-ANSITable",
  "dist_version" => "0.16",
  "license" => "perl",
  "module_name" => "Text::ANSITable",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Color::ANSI::Util" => "0.03",
    "Data::Clone" => 0,
    "Data::Unixish::Apply" => "1.33",
    "Data::Unixish::ansi" => "0.02",
    "DateTime" => 0,
    "JSON" => 0,
    "Log::Any" => 0,
    "Module::List" => 0,
    "Moo" => 0,
    "Parse::VarName" => 0,
    "SHARYANTO::Color::Util" => 0,
    "Term::Detect" => "0.02",
    "Term::Size" => 0,
    "Text::ANSI::Util" => "0.08",
    "experimental" => 0,
    "perl" => "5.010001"
  },
  "script_files" => [
    "bin/ansitable-list-color-themes",
    "bin/ansitable-list-border-styles"
  ],
  "test_requires" => {
    "Test::Exception" => 0,
    "Test::More" => "0.98"
  }
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  my $tr = delete $module_build_args{test_requires};
  my $br = $module_build_args{build_requires};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
