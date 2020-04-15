MAINTAINERCLEANFILES 		= Makefile.in

EXTRA_DIST 			= qgn_calendar_bg_apr.jpg  qgn_calendar_bg_feb.jpg \
				  qgn_calendar_bg_jun.jpg  qgn_calendar_bg_nov.jpg \
				  qgn_calendar_bg_aug.jpg  qgn_calendar_bg_jan.jpg \
				  qgn_calendar_bg_mar.jpg  qgn_calendar_bg_oct.jpg \
				  qgn_calendar_bg_dec.jpg  qgn_calendar_bg_jul.jpg \
				  qgn_calendar_bg_may.jpg  qgn_calendar_bg_sep.jpg \
				  calendar_agenda_row_first_last.png \
				  calendar_agenda_row_first.png      \
				  calendar_agenda_row_last.png       \
				  calendar_agenda_row_middle.png     \
				  calendar_month_current.png         \
				  calendar_month_lastmonth.png       \
				  calendar_month_normal.png          \
				  calendar_month_week.png            \
				  calendar_weekday_current.png       \
				  calendar_weekday.png               \
				  calendar_week_day_separator.png    \
				  calendar_week_day_shade.png        \
				  calendar_week_hour_line.png        \
				  calendar_week_time_column.png      \
				  calendar_agenda_row_pressed.png    \
				  calendar_month_pressed.png         \
				  calendar_month_week_pressed.png    \
				  calendar_weekday_pressed.png       \
				  generic_area_pressed.png           

clean-local:
	find -iname '*.tmp' -exec rm -f '{}' \;

install: 
	$(mkinstalldirs) $(DESTDIR)/$(CALENDAR_FULL_DIR)
	
	find -iname '*.png' -exec hildon-theme-dither '{}' '{}.tmp' \;
	find -iname '*.jpg' -exec hildon-theme-dither '{}' '{}.tmp' \;
	for file in *.tmp; do \
		install -c -m 644 $$file $(DESTDIR)/$(CALENDAR_FULL_DIR)/$$(echo $$file | sed 's/.tmp//'); \
	done

