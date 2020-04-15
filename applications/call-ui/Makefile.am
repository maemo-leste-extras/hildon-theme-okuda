MAINTAINERCLEANFILES 		= Makefile.in

CLEANFILES			= portrait-call-tmp.png

EXTRA_DIST 			= portrait-call.png

install: 

	$(mkinstalldirs) $(DESTDIR)/$(CALLUI_FULL_DIR)
	
	hildon-theme-dither portrait-call.png portrait-call-tmp.png

	install -c -m 644 portrait-call-tmp.png $(DESTDIR)/$(CALLUI_FULL_DIR)/portrait-call.png
