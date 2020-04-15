MAINTAINERCLEANFILES 		= Makefile.in

CLEANFILES			= slice.stamp

EXTRA_DIST 			= template.svg \
                                  template.png \
				  index.theme

all: slice.stamp

clean-local:
	rm -r icons
#	find -iname '*.png' -a '!' -iname template.png -a '!' -iname coordinates.png -a '!' \
#		 -exec rm -f '{}' \;
#	find -iname '*.jpg' -exec rm -f '{}' \;
#	find -iname '*.jpeg' -exec rm -f '{}' \;

slice.stamp: layout.txt template.png
	mkdir -p icons/okuda/216x216/hildon/
	mkdir -p icons/okuda/144x144/hildon/
	mkdir -p icons/okuda/96x96/hildon/
	mkdir -p icons/okuda/128x128/hildon/
	mkdir -p icons/okuda/14x14/hildon/
	mkdir -p icons/okuda/164x164/hildon/
	mkdir -p icons/okuda/16x16/hildon/
	mkdir -p icons/okuda/18x18/hildon/
	mkdir -p icons/okuda/24x24/hildon/
	mkdir -p icons/okuda/295x295/hildon/
	mkdir -p icons/okuda/32x32/hildon/
	mkdir -p icons/okuda/48x48/hildon/
	mkdir -p icons/okuda/64x64/hildon/
	mkdir -p icons/okuda/scalable/hildon/
	cp index.theme icons/okuda
	hildon-theme-slicer layout.txt template.png
	touch slice.stamp

install: all
	$(mkinstalldirs) $(DESTDIR)/usr/share/
	cp -rv icons $(DESTDIR)/usr/share/icons

