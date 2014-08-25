github:
	git add .
	git commit -a -m "automatic commit"
	git push origin master

sense:
	cat source/*.csv > temp/stage1-from-csv.csv
	cat source/*.rem > temp/stage1.rem
	# perl scripts/rem2csv.pl temp/stage1.rem > temp/stage1-from-rem.csv
	cat temp/stage1*.csv | sort -u > temp/stage2.csv
	sort -t\; -k3n -k2n -k1n temp/stage2.csv -o temp/stage3.csv
	perl scripts/csv2rem-ics.pl temp/stage3.csv > temp/events-ics.rem
	perl scripts/csv2rem-html.pl temp/stage3.csv > temp/events-html.rem
	#
	# outputs
	perl scripts/csv2ikiwiki.pl temp/stage3.csv > output/events-ikiwiki.csv
	remind -m -p36 temp/events-html.rem | perl ../rem2html/rem2html --nomini --title Events > output/events.html
	remind -s360 -irem2ics=1 temp/events-ics.rem 1 Jan 2014 | TZ=CEST HOSTNAME=foo perl ../rem2ics/rem2ics -do -norecur -usetag > output/events.ics
	perl scripts/csv2rem.pl temp/stage3.csv > output/events.rem
