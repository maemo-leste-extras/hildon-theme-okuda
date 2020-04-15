themedir			= @MATCHBOX_LEGACY_FULL_DIR@
theme_DATA			= theme.xml

theme.xml: 
	hildon-theme-subst $(LAYOUT_DIR)/layout.txt $(srcdir)/../template/template.png $(LAYOUT_DIR)/theme-matchbox1.xml theme.xml
	sed -i -e 's:@THEME_DIR\@:@THEME_DIR@:' theme.xml
	sed -i -e 's:@THEME_FULL_DIR\@:@THEME_FULL_DIR@:' theme.xml
	sed -i -e 's:@THEME_NAME\@:@THEME_NAME@:' theme.xml

MAINTAINERCLEANFILES			= Makefile.in

CLEANFILES				= theme.xml


