MAINTAINERCLEANFILES 		= Makefile.in

CLEANFILES			= slice.stamp

EXTRA_DIST 			= template.svg \
				  template.png \
				  background.png

all: slice.stamp

clean-local:
	find -iname '*.png' -a '!' -iname background.png -a '!' -iname template.png -a '!' -iname coordinates.png -a '!' \
		 -exec rm -f '{}' \;

slice.stamp: layout.txt template.png
	hildon-theme-slicer layout.txt template.png
	touch slice.stamp

install: all
	$(mkinstalldirs) $(DESTDIR)/$(MEDIAPLAYER_FULL_DIR)
	hildon-theme-dither background.png background-tmp.png
	install -c -m 644 background-tmp.png $(DESTDIR)/$(MEDIAPLAYER_FULL_DIR)/background.png
	find -iname '*.png' -a ! -iname template.png -a ! -iname coordinates.png -a ! -iname background.png -a ! -iname background-tmp.png \
		-exec install -c -m 644 '{}' $(DESTDIR)/$(MEDIAPLAYER_FULL_DIR)/ \;
	find -iname '*.jpg' -exec install -c -m 644 '{}' $(DESTDIR)/$(MEDIAPLAYER_FULL_DIR)/ \;
	find -iname '*.jpeg' -exec install -c -m 644 '{}' $(DESTDIR)/$(MEDIAPLAYER_FULL_DIR)/ \;
