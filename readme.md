todo:
+ wipe local wiki and perform import on fresh install
- if all is good, create a github and push up to it
- host at wiki.lotrtcgpc.net
- start setting up cargo tables
- work istaribot to import from db
- announce?



Steps to recreate the wiki:

- run the docker-compose
	- ensure that the volume section is commented out
- navigate to your base url and follow the wizard for basic setup (database, admin setup, etc).  
	- Database information should match what's in the docker-compose; make sure the host is "wiki_db" and that the username/password matches what's in the MYSQL_* section
- download the LocalSettings.php as prompted by the wizard
- alter docker-compose to bind ./wiki to /var/www/html2
- rebuild the containers
- in the lotrtcg_wiki container, copy /var/www/html to /var/www/html2
	- you should now have a complete copy of the entire wiki structure in ./wiki outside of the container
- revert the docker-compose file to bind ./wiki back to /var/www/html
- place the LocalSettings.php file from earlier into ./wiki
- rebuild the containers
- navigate to the wiki home; you should be presented with a fresh new wiki
- copy the file dump to the wiki folder
- copy the images dump (NOT straight into the images folder!!)
- copy the ext_images dump
- cd to maintenance and run
	- php importDump.php --no-updates ../lotr_wiki_all_revisions.xml.gz
	- php importImages.php ../images2
	- php rebuildrecentchanges.php
	- php update.php
	