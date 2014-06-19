package Text::ANSITable::BorderStyle::Default;

use 5.010;
use strict;
use utf8;
use warnings;

our $VERSION = '0.33'; # VERSION

our %border_styles = (

    # none

    none_ascii => {
        summary => 'No border',
        chars => [
            ['','','',''],     # 0
            ['','',''],        # 1
            ['','','',''],     # 2
            ['','',''],        # 3
            [' ','-','-',' '], # 4
            ['','','',''],     # 5
        ],
    },

    none_boxchar => {
        summary => 'No border',
        chars => [
            ['','','',''],     # 0
            ['','',''],        # 1
            ['','','',''],     # 2
            ['','',''],        # 3
            ['','q','q',''],   # 4
            ['','','',''],     # 5
        ],
        box_chars => 1,
    },

    none_utf8 => {
        summary => 'No border',
        chars => [
            ['','','',''],     # 0
            ['','',''],        # 1
            ['','','',''],     # 2
            ['','',''],        # 3
            ['','─','─',''],   # 4
            ['','','',''],     # 5
        ],
        utf8 => 1,
    },


    # space

    space_ascii => {
        summary => 'Space as border',
        chars => [
            [' ',' ',' ',' '], # 0
            [' ',' ',' '],     # 1
            [' ',' ',' ',' '], # 2
            [' ',' ',' '],     # 3
            [' ','-','-',' '], # 4
            [' ',' ',' ',' '], # 5
        ],
    },

    space_boxchar => {
        summary => 'Space as border',
        chars => [
            [' ',' ',' ',' '], # 0
            [' ',' ',' '],     # 1
            [' ',' ',' ',' '], # 2
            [' ',' ',' '],     # 3
            [' ','q','q',' '], # 4
            [' ',' ',' ',' '], # 5
        ],
        box_chars => 1,
    },

    space_utf8 => {
        summary => 'Space as border',
        chars => [
            [' ',' ',' ',' '], # 0
            [' ',' ',' '],     # 1
            [' ',' ',' ',' '], # 2
            [' ',' ',' '],     # 3
            [' ','─','─',' '], # 4
            [' ',' ',' ',' '], # 5
        ],
        utf8 => 1,
    },

    spacei_ascii => {
        summary => 'Space, inner-only',
        chars => [
            ['','','',''],   # 0
            ['',' ',''],     # 1
            ['',' ',' ',''], # 2
            ['',' ',''],     # 3
            ['','-','-',''], # 4
            ['','','',''],   # 5
        ],
    },

    spacei_boxchar => {
        summary => 'Space, inner-only',
        chars => [
            ['','','',''],   # 0
            ['',' ',''],     # 1
            ['',' ',' ',''], # 2
            ['',' ',''],     # 3
            ['','q','q',''], # 4
            ['','','',''],   # 5
        ],
        box_chars => 1,
    },

    spacei_utf8 => {
        summary => 'Space, inner-only',
        chars => [
            ['','','',''],   # 0
            ['',' ',''],     # 1
            ['',' ',' ',''], # 2
            ['',' ',''],     # 3
            ['','─','─',''], # 4
            ['','','',''],   # 5
        ],
        utf8 => 1,
    },

    # single

    single_ascii => {
        summary => 'Single',
        chars => [
            ['.','-','+','.'], # 0
            ['|','|','|'],     # 1
            ['+','-','+','+'], # 2
            ['|','|','|'],     # 3
            ['+','-','+','+'], # 4
            ['`','-','+',"'"], # 5
        ],
    },

    single_boxchar => {
        summary => 'Single',
        chars => [
            ['l','q','w','k'], # 0
            ['x','x','x'],     # 1
            ['t','q','n','u'], # 2
            ['x','x','x'],     # 3
            ['t','q','n','u'], # 4
            ['m','q','v','j'], # 5
        ],
        box_chars => 1,
    },

    single_utf8 => {
        summary => 'Single',
        chars => [
            ['┌','─','┬','┐'], # 0
            ['│','│','│'],     # 1
            ['├','─','┼','┤'], # 2
            ['│','│','│'],     # 3
            ['├','─','┼','┤'], # 4
            ['└','─','┴','┘'], # 5
        ],
        utf8 => 1,
    },


    # single, horizontal only

    singleh_ascii => {
        summary => 'Single, horizontal only',
        chars => [
            ['-','-','-','-'], # 0
            [' ',' ',' '],     # 1
            ['-','-','-','-'], # 2
            [' ',' ',' '],     # 3
            ['-','-','-','-'], # 4
            ['-','-','-','-'], # 5
        ],
    },

    singleh_boxchar => {
        summary => 'Single, horizontal only',
        chars => [
            ['q','q','q','q'], # 0
            [' ',' ',' '],     # 1
            ['q','q','q','q'], # 2
            [' ',' ',' '],     # 3
            ['q','q','q','q'], # 4
            ['q','q','q','q'], # 5
        ],
        box_chars => 1,
    },

    singleh_utf8 => {
        summary => 'Single, horizontal only',
        chars => [
            ['─','─','─','─'], # 0
            [' ',' ',' '],     # 1
            ['─','─','─','─'], # 2
            [' ',' ',' '],     # 3
            ['─','─','─','─'], # 4
            ['─','─','─','─'], # 5
        ],
        utf8 => 1,
    },


    # single, vertical only

    singlev_ascii => {
        summary => 'Single border, only vertical',
        chars => [
            ['|',' ','|','|'], # 0
            ['|','|','|'],     # 1
            ['|',' ','|','|'], # 2
            ['|','|','|'],     # 3
            ['|','-','|','|'], # 4
            ['|',' ','|','|'], # 5
        ],
    },

    singlev_boxchar => {
        summary => 'Single, vertical only',
        chars => [
            ['x',' ','x','x'], # 0
            ['x','x','x'],     # 1
            ['x',' ','x','x'], # 2
            ['x','x','x'],     # 3
            ['x','q','x','x'], # 4
            ['x',' ','x','x'], # 5
        ],
        box_chars => 1,
    },

    singlev_utf8 => {
        summary => 'Single, vertical only',
        chars => [
            ['│',' ','│','│'], # 0
            ['│','│','│'],     # 1
            ['│',' ','│','│'], # 2
            ['│','│','│'],     # 3
            ['│','─','│','│'], # 4
            ['│',' ','│','│'], # 5
        ],
        utf8 => 1,
    },


    # single, inner only

    singlei_ascii => {
        summary => 'Single, inner only (like in psql command-line client)',
        chars => [
            ['','','',''],     # 0
            [' ','|',' '],     # 1
            [' ','-','+',' '], # 2
            [' ','|',' '],     # 3
            [' ','-','+',' '], # 4
            ['','','',''],     # 5
        ],
    },

    singlei_boxchar => {
        summary => 'Single, inner only (like in psql command-line client)',
        chars => [
            ['','','',''],     # 0
            [' ','x',' '],     # 1
            [' ','q','n',' '], # 2
            [' ','x',' '],     # 3
            [' ','q','n',' '], # 4
            ['','','',''],     # 5
        ],
        box_chars => 1,
    },

    singlei_utf8 => {
        summary => 'Single, inner only (like in psql command-line client)',
        chars => [
            ['','','',''],     # 0
            [' ','│',' '],     # 1
            [' ','─','┼',' '], # 2
            [' ','│',' '],     # 3
            [' ','─','┼',' '], # 4
            ['','','',''],     # 5
        ],
        utf8 => 1,
    },


    # single, outer only

    singleo_ascii => {
        summary => 'Single, outer only',
        chars => [
            ['.','-','-','.'], # 0
            ['|',' ','|'],     # 1
            ['|',' ',' ','|'], # 2
            ['|',' ','|'],     # 3
            ['+','-','-','+'], # 4
            ['`','-','-',"'"], # 5
        ],
    },

    singleo_boxchar => {
        summary => 'Single, outer only',
        chars => [
            ['l','q','q','k'], # 0
            ['x',' ','x'],     # 1
            ['x',' ',' ','x'], # 2
            ['x',' ','x'],     # 3
            ['t','q','q','u'], # 4
            ['m','q','q','j'], # 5
        ],
        box_chars => 1,
    },

    singleo_utf8 => {
        summary => 'Single, outer only',
        chars => [
            ['┌','─','─','┐'], # 0
            ['│',' ','│'],     # 1
            ['│',' ',' ','│'], # 2
            ['│',' ','│'],     # 3
            ['├','─','─','┤'], # 4
            ['└','─','─','┘'], # 5
        ],
        utf8 => 1,
    },


    # curved single

    csingle => {
        summary => 'Curved single',
        chars => [
            ['╭','─','┬','╮'], # 0
            ['│','│','│'],     # 1
            ['├','─','┼','┤'], # 2
            ['│','│','│'],     # 3
            ['├','─','┼','┤'], # 4
            ['╰','─','┴','╯'], # 5
        ],
        utf8 => 1,
    },


    # bold single

    bold => {
        summary => 'Bold',
        chars => [
            ['┏','━','┳','┓'], # 0
            ['┃','┃','┃'],     # 1
            ['┣','━','╋','┫'], # 2
            ['┃','┃','┃'],     # 3
            ['┣','━','╋','┫'], # 4
            ['┗','━','┻','┛'], # 5
        ],
        utf8 => 1,
    },


    #boldv => {
    #    summary => 'Vertically-bold',
    #},


    #boldh => {
    #    summary => 'Horizontally-bold',
    #},


    # double

    double => {
        summary => 'Double',
        chars => [
            ['╔','═','╦','╗'], # 0
            ['║','║','║'],     # 1
            ['╠','═','╬','╣'], # 2
            ['║','║','║'],     # 3
            ['╠','═','╬','╣'], # 4
            ['╚','═','╩','╝'], # 5
        ],
        utf8 => 1,
    },


    # brick

    brick => {
        summary => 'Single, bold on bottom right to give illusion of depth',
        chars => [
            ['┌','─','┬','┒'], # 0
            ['│','│','┃'],     # 1
            ['├','─','┼','┨'], # 2
            ['│','│','┃'],     # 3
            ['├','─','┼','┨'], # 4
            ['┕','━','┷','┛'], # 5
        ],
        utf8 => 1,
    },

    bricko => {
        summary => 'Single, outer only, '.
            'bold on bottom right to give illusion of depth',
        chars => [
            ['┌','─','─','┒'], # 0
            ['│',' ','┃'],     # 1
            ['│',' ',' ','┃'], # 2
            ['│',' ','┃'],     # 3
            ['├','─','─','┨'], # 4
            ['┕','━','━','┛'], # 5
        ],
        utf8 => 1,
    },

);

1;
# ABSTRACT: Default border styles

__END__

=pod

=encoding UTF-8

=head1 NAME

Text::ANSITable::BorderStyle::Default - Default border styles

=head1 VERSION

This document describes version 0.33 of Text::ANSITable::BorderStyle::Default (from Perl distribution Text-ANSITable), released on 2014-06-19.

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Text-ANSITable>.

=head1 SOURCE

Source repository is at L<https://github.com/sharyanto/perl-Text-ANSITable>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Text-ANSITable>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 INCLUDED BORDER STYLES

=over

=item * bold (Bold)

=item * brick (Single, bold on bottom right to give illusion of depth)

=item * bricko (Single, outer only, bold on bottom right to give illusion of depth)

=item * csingle (Curved single)

=item * double (Double)

=item * none_ascii (No border)

=item * none_boxchar (No border)

=item * none_utf8 (No border)

=item * single_ascii (Single)

=item * single_boxchar (Single)

=item * single_utf8 (Single)

=item * singleh_ascii (Single, horizontal only)

=item * singleh_boxchar (Single, horizontal only)

=item * singleh_utf8 (Single, horizontal only)

=item * singlei_ascii (Single, inner only (like in psql command-line client))

=item * singlei_boxchar (Single, inner only (like in psql command-line client))

=item * singlei_utf8 (Single, inner only (like in psql command-line client))

=item * singleo_ascii (Single, outer only)

=item * singleo_boxchar (Single, outer only)

=item * singleo_utf8 (Single, outer only)

=item * singlev_ascii (Single border, only vertical)

=item * singlev_boxchar (Single, vertical only)

=item * singlev_utf8 (Single, vertical only)

=item * space_ascii (Space as border)

=item * space_boxchar (Space as border)

=item * space_utf8 (Space as border)

=item * spacei_ascii (Space, inner-only)

=item * spacei_boxchar (Space, inner-only)

=item * spacei_utf8 (Space, inner-only)

=back

=cut
