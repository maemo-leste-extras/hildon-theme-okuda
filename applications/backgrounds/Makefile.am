MAINTAINERCLEANFILES 		= Makefile.in

EXTRA_DIST 			= clock.png lockslider.png applicationmanager.png app_install_network.png app_install_all.png app_install_office.png app_install_desktop.png app_install_other.png app_install_development.png app_install_ovi.png app_install_education.png app_install_science.png app_install_games.png app_install_system.png app_install_graphics.png app_install_utilities.png app_install_maemo.png app_install_multimedia.png app_install_navigation.png

clean-local:
	find -iname '*.tmp' -exec rm -f '{}' \;

install: 

	$(mkinstalldirs) $(DESTDIR)/$(BACKGROUNDS_FULL_DIR)
	
	find -iname '*.png' -exec hildon-theme-dither '{}' '{}.tmp' \;

	for file in *.tmp; do \
		install -c -m 644 $$file $(DESTDIR)/$(BACKGROUNDS_FULL_DIR)/$$(echo $$file | sed 's/.tmp//'); \
	done

