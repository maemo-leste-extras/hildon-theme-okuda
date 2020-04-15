themedir 				= @THEME_FULL_DIR@

gtkthemedir				= @GTK_FULL_DIR@

cssdir					= @CSS_FULL_DIR@

colorsdir				= @THEME_FULL_DIR@

gtktheme_DATA				= gtkrc

theme_DATA 				= index.theme

css_DATA				= colors.css

colors_DATA				= colors.config

gtkrc: 
	hildon-theme-subst $(LAYOUT_DIR)/layout.txt $(srcdir)/../template/template.png gtkrc.source gtkrc
	sed -i -e 's:@THEME_FULL_DIR\@:@THEME_FULL_DIR@:' gtkrc
	sed -i -e 's:@THEME_NAME\@:@THEME_NAME@:' gtkrc
	echo "" >> gtkrc
	echo "# Generated from hildon-theme-layout-5 version `pkg-config --modversion hildon-theme-layout-5`" >> gtkrc

index.theme: 
	hildon-theme-subst $(LAYOUT_DIR)/layout.txt $(srcdir)/../template/template.png $(LAYOUT_DIR)/index.theme index.theme
	sed -i -e 's:@THEME_DIR\@:@THEME_DIR@:' index.theme
	sed -i -e 's:@THEME_FULL_DIR\@:@THEME_FULL_DIR@:' index.theme
	sed -i -e 's:@THEME_NAME\@:@THEME_NAME@:' index.theme

colors.css: 
	hildon-theme-subst $(LAYOUT_DIR)/layout.txt $(srcdir)/../template/template.png $(LAYOUT_DIR)/colors.css tmp-colors.css
	hildon-theme-subst $(srcdir)/../applications/rtcom-messaging-ui/layout.txt $(srcdir)/../applications/rtcom-messaging-ui/template.png tmp-colors.css colors.css
	sed -i -e 's:@COLORS_FULL_DIR\@:@COLORS_FULL_DIR@:' colors.css
	sed -i -e 's:@THEME_NAME\@:@THEME_NAME@:' colors.css

colors.config:
	hildon-theme-subst $(LAYOUT_DIR)/layout.txt $(srcdir)/../template/template.png $(LAYOUT_DIR)/colors.config colors.config

MAINTAINERCLEANFILES			= Makefile.in

CLEANFILES				= gtkrc				\
					  gtkrc.input_method		\
					  index.theme			\
					  colors.css			\
					  tmp-colors.css		\
					  colors.config


