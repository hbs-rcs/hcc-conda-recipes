## 
## Makefile.am 
##

AM_CFLAGS=-I$(top_srcdir)/include
AM_CXXFLAGS=-I$(top_srcdir)/include

bin_PROGRAMS = mri_edit_wm_with_aseg

mri_edit_wm_with_aseg_SOURCES=mri_edit_wm_with_aseg.c \
	mri_edit_wm_with_aseg.help.xml.h
mri_edit_wm_with_aseg_LDADD= $(addprefix $(top_builddir)/, $(LIBS_MGH))
mri_edit_wm_with_aseg_LDFLAGS=$(OS_LDFLAGS)

foodir=$(prefix)/docs/xml
foo_DATA=mri_edit_wm_with_aseg.help.xml

TESTS=$(top_builddir)/scripts/help_xml_validate

clean-local:
	rm -f $(BUILT_SOURCES)

EXTRA_DIST=$(foo_DATA) $(BUILT_SOURCES)

# Our release target. Include files to be excluded here. They will be
# found and removed after 'make install' is run during the 'make
# release' target.
EXCLUDE_FILES=""
include $(top_srcdir)/Makefile.extra

BUILT_SOURCES=mri_edit_wm_with_aseg.help.xml.h
