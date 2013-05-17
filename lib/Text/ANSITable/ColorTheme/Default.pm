package Text::ANSITable::ColorTheme::Default;

use 5.010;
use strict;
use warnings;

use Data::Clone;
use SHARYANTO::Color::Util qw(mix_2_rgb_colors);

our $VERSION = '0.12'; # VERSION

our %color_themes = (

    no_color => {
        summary => 'Special theme that means no color',
        colors => {
        },
        no_color => 1,
    },

    #default_16 => {
    #    summary => 'Default for 16-color terminal',
    #    colors => {
    #    },
    #},

    #default_256 => {
    default_gradation => {
        summary => 'Default (for terminal with black background)',
        description => <<'_',

Border color has gradation from top to bottom. Accept arguments C<border1> and
C<border2> to set first (top) and second (bottom) foreground RGB colors. Colors
will fade from the top color to bottom color. Also accept C<border1_bg> and
C<border2_bg> to set background RGB colors.

_
        colors => {
            border      => sub {
                my ($self, %args) = @_;

                my $pct = ($self->{_draw}{y}+1) / $self->{_draw}{table_height};

                my $rgbf1 = $self->{color_theme_args}{border1} // $self->{color_theme}{data}{default_border1} // 'ffffff';
                my $rgbf2 = $self->{color_theme_args}{border2} // $self->{color_theme}{data}{default_border2} // '444444';
                my $rgbf  = mix_2_rgb_colors($rgbf1, $rgbf2, $pct);

                my $rgbb1 = $self->{color_theme_args}{border1_bg};
                my $rgbb2 = $self->{color_theme_args}{border2_bg};
                my $rgbb;
                if ($rgbb1 && $rgbb2) {
                    $rgbb = mix_2_rgb_colors($rgbb1, $rgbb2, $pct);
                }

                #say "D:$rgbf, $rgbb";
                [$rgbf, $rgbb];
            },

            header      => '808080',
            header_bg   => undef,
            cell        => undef,
            cell_bg     => undef,

            num_data    => '66ffff',
            str_data    => undef,
            date_data   => 'aaaa00',
            bool_data   => sub {
                my ($self, %args) = @_;

                $args{orig_data} ? '00ff00' : 'ff0000';
            },
        },
    },

);

{
    my $ct = clone($color_themes{default_gradation});
    $ct->{summary} = 'Default (for terminal with white background)';
    $ct->{colors}{header_bg} = 'cccccc';
    $ct->{data}{default_border1} = '000000';
    $ct->{data}{default_border2} = 'cccccc';
    $ct->{colors}{num_data}  = '006666';
    $ct->{colors}{date_data} = '666600';
    $ct->{colors}{bool_data} = sub {
        my ($self, %args) = @_;
        $args{orig_data} ? '00cc00' : 'cc0000';
    };
    $color_themes{default_gradation_whitebg} = $ct;
}


{
    my $ct = clone($color_themes{default_gradation});
    $ct->{colors}{border} = '666666';
    delete $ct->{description};
    $color_themes{default_nogradation} = $ct;
}

{
    my $ct = clone($color_themes{default_gradation_whitebg});
    $ct->{colors}{border} = '666666';
    delete $ct->{description};
    $color_themes{default_nogradation_whitebg} = $ct;
}

1;
# ABSTRACT: Default color themes


__END__
=pod

=encoding utf-8

=head1 NAME

Text::ANSITable::ColorTheme::Default - Default color themes

=head1 VERSION

version 0.12

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 DESCRIPTION

=head1 FUNCTIONS


None are exported by default, but they are exportable.

=head1 INCLUDED COLOR THEMES

=over

=item * default_gradation (Default (for terminal with black background))


Border color has gradation from top to bottom. Accept arguments C<border1> and
C<border2> to set first (top) and second (bottom) foreground RGB colors. Colors
will fade from the top color to bottom color. Also accept C<border1_bg> and
C<border2_bg> to set background RGB colors.



=item * default_gradation_whitebg (Default (for terminal with white background))


Border color has gradation from top to bottom. Accept arguments C<border1> and
C<border2> to set first (top) and second (bottom) foreground RGB colors. Colors
will fade from the top color to bottom color. Also accept C<border1_bg> and
C<border2_bg> to set background RGB colors.



=item * default_nogradation (Default (for terminal with black background))

=item * default_nogradation_whitebg (Default (for terminal with white background))

=item * no_color (Special theme that means no color)

=back

=cut

