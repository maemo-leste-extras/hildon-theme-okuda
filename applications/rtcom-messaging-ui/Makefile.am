MAINTAINERCLEANFILES 		= Makefile.in

CLEANFILES			= slice.stamp

EXTRA_DIST 			= template.svg \
                                  template.png

all: slice.stamp

clean-local:
	find -iname '*.png' -a '!' -iname template.png -a '!' -iname coordinates.png -a '!' \
		 -exec rm -f '{}' \;
#	find -iname '*.jpg' -exec rm -f '{}' \;
#	find -iname '*.jpeg' -exec rm -f '{}' \;

slice.stamp: layout.txt template.png
	hildon-theme-slicer layout.txt template.png
	touch slice.stamp

install: all
	$(mkinstalldirs) $(DESTDIR)/$(MESSAGING_FULL_DIR)
	
	find -iname '*.png' -a ! -iname template.png -a ! -iname coordinates.png \
		-exec install -c -m 644 '{}' $(DESTDIR)/$(MESSAGING_FULL_DIR)/ \;
	find -iname '*.jpg' -exec install -c -m 644 '{}' $(DESTDIR)/$(MESSAGING_FULL_DIR)/ \;
	find -iname '*.jpeg' -exec install -c -m 644 '{}' $(DESTDIR)/$(MESSAGING_FULL_DIR)/ \;

