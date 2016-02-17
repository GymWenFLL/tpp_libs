
# This is the Perl OpenGL build configuration file.
# It contains the final OpenGL build arguements from
# the configuration process.  Access the values by
# use OpenGL::Config which defines the variable
# $OpenGL::Config containing the hash arguments from
# the WriteMakefile() call.
#
$OpenGL::Config = {
                    'LIBS' => '-L/usr/lib -L/usr/local/lib -lglut -lGL -lGLU -lglut -lXext -lXmu -lXi -lICE -lX11 -lm',
                    'clean' => {
                                 'FILES' => 'Config.pm utils/glversion.txt '
                               },
                    'LDFROM' => '$(OBJECT) ',
                    'OBJECT' => '$(BASEEXT)$(OBJ_EXT) gl_util$(OBJ_EXT) pogl_const$(OBJ_EXT) pogl_gl_top$(OBJ_EXT) pogl_glu$(OBJ_EXT) pogl_rpn$(OBJ_EXT) pogl_glut$(OBJ_EXT) pogl_gl_Accu_GetM$(OBJ_EXT) pogl_gl_GetP_Pass$(OBJ_EXT) pogl_gl_Mult_Prog$(OBJ_EXT) pogl_gl_Pixe_Ver2$(OBJ_EXT) pogl_gl_Prog_Clam$(OBJ_EXT) pogl_gl_Tex2_Draw$(OBJ_EXT) pogl_gl_Ver3_Tex1$(OBJ_EXT) pogl_gl_Vert_Multi$(OBJ_EXT)',
                    'dynamic_lib' => {},
                    'EXE_FILES' => [],
                    'XSPROTOARG' => '-noprototypes',
                    'PREREQ_PM' => {
                                     'Test::More' => 0
                                   },
                    'META_MERGE' => {
                                      'abstract' => 'Perl bindings to the OpenGL API, GLU, and GLUT/FreeGLUT',
                                      'resources' => {
                                                       'homepage' => 'http://sourceforge.net/projects/pogl/',
                                                       'bugtracker' => 'http://sourceforge.net/tracker/?group_id=562483&atid=2281758',
                                                       'repository' => 'git://pogl.git.sourceforge.net/gitroot/pogl/pogl'
                                                     }
                                    },
                    'AUTHOR' => 'Chris Marshall <chm at cpan dot org>',
                    'DEFINE' => '-DHAVE_VER -DHAVE_GL -DHAVE_GLU -DHAVE_GLUT -DHAVE_GLX -DHAVE_FREEGLUT -DHAVE_FREEGLUT_H -DGL_GLEXT_LEGACY',
                    'NAME' => 'OpenGL',
                    'PM' => {
                              'Config.pm' => '$(INST_LIBDIR)/OpenGL/Config.pm',
                              'OpenGL.pm' => '$(INST_LIBDIR)/OpenGL.pm',
                              'OpenGL.pod' => '$(INST_LIBDIR)/OpenGL.pod',
                              'Tessellation.pod' => '$(INST_LIBDIR)/OpenGL/Tessellation.pod',
                              'Array.pod' => '$(INST_LIBDIR)/OpenGL/Array.pod'
                            },
                    'VERSION_FROM' => 'OpenGL.pm',
                    'OPTIMIZE' => undef,
                    'INC' => '-I/usr/include -I/usr/local/include'
                  };

1;
__END__
