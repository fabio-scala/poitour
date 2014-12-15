POI Tour - Personalisierter Tourenplaner für Fussgänger
=======
POI Tour uses the [genetic algorithm by A. Piwonska](http://yadda.icm.edu.pl/baztech/element/bwmeta1.element.baztech-article-BPB1-0051-0005) in order to suggest a tour meeting the user constraints and visiting as many specified points of interest (POI's).

![poitour-screenshot-small](https://cloud.githubusercontent.com/assets/1829697/5435976/4fa24f20-8461-11e4-8b4d-38983a0f8dbc.png)

# Requirements
* [Open Source Routing Machine (OSRM)](http://project-osrm.org/) up and running, preferably with the profile `foot-city.lua` in `osrm/profiles` of this repository or any other profile with a fixed speed of 1 m/s.
* Access to an enhanced [osm2pgsql](http://wiki.openstreetmap.org/wiki/Osm2pgsql) database [EOSDMDBOne](http://giswiki.hsr.ch/EOSMDBOne)
* Python 2.7
* node.js (only for development and build)

# Install
See the commented install scripts and README's in the submodules of this repository (tested on Ubuntu Server
14.04.1 LTS 64-bit)
