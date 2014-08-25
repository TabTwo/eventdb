eventdb
=======

little tools to convert lists of events

Take an spreadsheet and convert it to an ics-file.

Prerequisites
=============
* Perl http://www.perl.org/
* remind http://www.roaringpenguin.com/products/remind
* rem2ics https://github.com/scy/rem2ics
* rem2html https://github.com/SwissKid/rem2html
* make https://www.gnu.org/software/make/

Installation
============
	$ mkdir events
	$ cd events
	$ git clone https://github.com/TabTwo/eventdb.git
	$ git clone https://github.com/scy/rem2ics
	$ git clone https://github.com/SwissKid/rem2html

Sourcefiles
===========
* remind-scripts for repeating events like Valentine's Day
* .csv files for your events

CSV-format
==========
I use quite a simple format here

D;M;Y;D;M;Y;Name;Location;City,Country,URL

Just place your file(s) in the source directory.

Remind-scripts
==============
Remind is an awesome swiss army knive for calendars and alarms.
Especially for repeating things like "every last friday of the month", try that with cron.
The only problem is, it does not work well with "event lasts from 1.sep to 10.oct".
Thouse events should be put in the csv.
I also use remind here as processor for the html-calendar and for the ics.

Output
======
* events-ikiwiki.csv, use it with events.mdwn in ikiwikis table directive https://ikiwiki.info/ikiwiki/directive/table/
* events-remind.rem, a basic remind-script with all events
* events.ics, import it to your calendar
* events.html, a html calendar

Scripts
=======
* Makefile, the glue for everything. Replace it with a shell script according to your needs.

Directories
===========
* output, grab your results from here
* scripts, this is where the magic happens
* source, put your files here
* temp, staging directory for scripts

Future Versions
===============
* I'm not happy with the ics, basically it's just the date and the name of the event.
* export to org-mode
* import of ics-files
