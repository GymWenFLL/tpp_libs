#
# Copyright (C) 2003-2008, 2013-2014 by the gtk2-perl team (see the file
# AUTHORS for the full list)
#
# This library is free software; you can redistribute it and/or modify it under
# the terms of the GNU Library General Public License as published by the Free
# Software Foundation; either version 2.1 of the License, or (at your option)
# any later version.
#
# This library is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.
#
# See the LICENSE file in the top-level directory of this distribution for the
# full license terms.

package Pango;

use 5.008;
use strict;
use warnings;

use Glib;

# if pango is at 1.10.0 or newer, we need to import the Cairo module for the
# cairo glue in pango.
eval "use Cairo;";

use Exporter;
require DynaLoader;

our $VERSION = '1.226';

our @ISA = qw(DynaLoader Exporter);

sub dl_load_flags { $^O eq 'darwin' ? 0x00 : 0x01 }

# now load the XS code.
Pango->bootstrap ($VERSION);

1;
__END__
# documentation is a good thing.

=head1 NAME

Pango - Layout and render international text

=head1 SYNOPSIS

  my $surface = Cairo::ImageSurface->create ('argb32', 200, 100);
  my $cr = Cairo::Context->create ($surface);

  my $layout = Pango::Cairo::create_layout ($cr);
  $layout->set_text ("\x{03A0}\x{03B1}\x{03BD}\x{8A9E}");

  my $font = Pango::FontDescription->from_string ('Serif Bold 27');
  $layout->set_font_description ($font);

  Pango::Cairo::show_layout($cr, $layout);

  $surface->write_to_png ('pango.png');

=head1 ABSTRACT

Pango is a library for laying out and rendering text, with an emphasis on
internationalization. Pango can be used anywhere that text layout is needed,
but using Pango in conjunction with L<Cairo> and/or L<Gtk2> provides a complete
solution with high quality text handling and graphics rendering.

Dynamically loaded modules handle text layout for particular combinations of
script and font backend. Pango provides a wide selection of modules, including
modules for Hebrew, Arabic, Hangul, Thai, and a number of Indic
scripts. Virtually all of the world's major scripts are supported.

In addition to the low level layout rendering routines, Pango includes
L<Pango::Layout>, a high level driver for laying out entire blocks of text, and
routines to assist in editing internationalized text.

[Adapted from L<http://www.pango.org/>.]

=head1 DOCUMENTATION

L<Pango> tries to stick very close in spirit to the C API of the underlying
pango library.  Thus, the manual available at
L<http://library.gnome.org/devel/pango/stable/> also applies to this module.
Additionally, API listings in POD form are generated during compilation for
each of the sub-modules.  An index of those POD pages is available at
L<Pango::index>.

=head1 SEE ALSO

L<perl>, L<Glib>, L<Cairo>, L<Gtk2>.

L<Pango::index> lists the autogenerated API documentation pod files for Pango.

L<http://www.pango.org/> is the homepage of the pango C library.  Its API
documentation is available at L<http://library.gnome.org/devel/pango/stable/>.

=head1 AUTHORS

 muppet <scott at asofyet dot org>
 Torsten Schoenfeld <kaffeetisch at gmx dot de>
 Marc Lehmann <pcg at goof dot com>

=head1 COPYRIGHT AND LICENSE

Copyright 2003-2011, 2014 by the gtk2-perl team.

This library is free software; you can redistribute it and/or modify it under
the terms of the GNU Library General Public License as published by the Free
Software Foundation; either version 2 of the License, or (at your option) any
later version.

This library is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

See the LICENSE file in the top-level directory of this distribution for the
full license terms.

=cut