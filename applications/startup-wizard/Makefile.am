MAINTAINERCLEANFILES 		= Makefile.in

CLEANFILES			= slice.stamp

EXTRA_DIST 			= template.svg \
                                  template.png \
				  wallpaper.png

all: slice.stamp

clean-local:
	find -iname '*.png' -a '!' -iname template.png -a '!' -iname coordinates.png -a '!' \
		 -iname wallpaper.png -exec rm -f '{}' \;
#	find -iname '*.jpg' -exec rm -f '{}' \;
#	find -iname '*.jpeg' -exec rm -f '{}' \;

slice.stamp: layout.txt template.png
	hildon-theme-slicer layout.txt template.png
	touch slice.stamp

install: all
	$(mkinstalldirs) $(DESTDIR)/$(WIZARD_FULL_DIR)
	hildon-theme-dither wallpaper.png wallpaper-tmp.png
	install -c -m 644 wallpaper-tmp.png $(DESTDIR)/$(WIZARD_FULL_DIR)/wallpaper.png
	find -iname '*.png' -a ! -iname template.png -a ! -iname coordinates.png -a ! -iname wallpaper.png -a ! -iname wallpaper-tmp.png \
		-exec install -c -m 644 '{}' $(DESTDIR)/$(WIZARD_FULL_DIR)/ \;
	find -iname '*.jpg' -exec install -c -m 644 '{}' $(DESTDIR)/$(WIZARD_FULL_DIR)/ \;
	find -iname '*.jpeg' -exec install -c -m 644 '{}' $(DESTDIR)/$(WIZARD_FULL_DIR)/ \;

