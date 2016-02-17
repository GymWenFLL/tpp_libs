package Alien::wxWidgets::Config::gtk2_2_8_12_uni_gcc_3_4;

use strict;

our %VALUES;

{
    no strict 'vars';
    %VALUES = %{
$VAR1 = {
          'version' => '2.008012',
          'alien_base' => 'gtk2_2_8_12_uni_gcc_3_4',
          'defines' => '-D_FILE_OFFSET_BITS=64 -D_LARGE_FILES -DWXUSINGDLL -D__WXGTK__ ',
          '_libraries' => {
                            'gizmos' => {
                                          'link' => '-lwx_gtk2u_gizmos-2.8',
                                          'dll' => 'libwx_gtk2u_gizmos-2.8.dll.a'
                                        },
                            'base' => {
                                        'link' => '-lwx_baseu-2.8',
                                        'dll' => 'libwx_baseu-2.8.dll.a'
                                      },
                            'xrc' => {
                                       'dll' => 'libwx_gtk2u_xrc-2.8.dll.a',
                                       'link' => '-lwx_gtk2u_xrc-2.8'
                                     },
                            'aui' => {
                                       'dll' => 'libwx_gtk2u_aui-2.8.dll.a',
                                       'link' => '-lwx_gtk2u_aui-2.8'
                                     },
                            'core' => {
                                        'dll' => 'libwx_gtk2u_core-2.8.dll.a',
                                        'link' => '-lwx_gtk2u_core-2.8'
                                      },
                            'media' => {
                                         'link' => '-lwx_gtk2u_media-2.8',
                                         'dll' => 'libwx_gtk2u_media-2.8.dll.a'
                                       },
                            'net' => {
                                       'link' => '-lwx_baseu_net-2.8',
                                       'dll' => 'libwx_baseu_net-2.8.dll.a'
                                     },
                            'qa' => {
                                      'dll' => 'libwx_gtk2u_qa-2.8.dll.a',
                                      'link' => '-lwx_gtk2u_qa-2.8'
                                    },
                            'richtext' => {
                                            'link' => '-lwx_gtk2u_richtext-2.8',
                                            'dll' => 'libwx_gtk2u_richtext-2.8.dll.a'
                                          },
                            'gl' => {
                                      'dll' => 'libwx_gtk2u_gl-2.8.dll.a',
                                      'link' => '-lwx_gtk2u_gl-2.8'
                                    },
                            'adv' => {
                                       'link' => '-lwx_gtk2u_adv-2.8',
                                       'dll' => 'libwx_gtk2u_adv-2.8.dll.a'
                                     },
                            'stc' => {
                                       'dll' => 'libwx_gtk2u_stc-2.8.dll.a',
                                       'link' => '-lwx_gtk2u_stc-2.8'
                                     },
                            'xml' => {
                                       'link' => '-lwx_baseu_xml-2.8',
                                       'dll' => 'libwx_baseu_xml-2.8.dll.a'
                                     },
                            'html' => {
                                        'link' => '-lwx_gtk2u_html-2.8',
                                        'dll' => 'libwx_gtk2u_html-2.8.dll.a'
                                      }
                          },
          'linker' => 'g++ -shared  ',
          'compiler' => 'g++',
          'prefix' => '/usr',
          'c_flags' => '',
          'link_flags' => '',
          'alien_package' => 'Alien::wxWidgets::Config::gtk2_2_8_12_uni_gcc_3_4',
          'include_path' => '-I/usr/lib/wx/include/gtk2-unicode-release-2.8 -I/usr/include/wx-2.8 ',
          'config' => {
                        'build' => 'multi',
                        'compiler_version' => '3.4',
                        'mslu' => 0,
                        'compiler_kind' => 'gcc',
                        'toolkit' => 'gtk2',
                        'unicode' => 1,
                        'debug' => 0
                      }
        };
    };
}

my $key = substr __PACKAGE__, 1 + rindex __PACKAGE__, ':';

sub values { %VALUES, key => $key }

sub config {
   +{ %{$VALUES{config}},
      package       => __PACKAGE__,
      key           => $key,
      version       => $VALUES{version},
      }
}

1;
