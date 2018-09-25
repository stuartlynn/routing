osmium extract --bbox -3.888954,40.311977,-3.517916,40.64373 spain-latest.osm.pbf -f pbf  > madrid.osm.pbf
osmium tags-filter -o madrid_ways.osm madrid.osm.pbf \
  w/highway=motorway,motorway_link,motorway_junction,trunk,trunk_link,primary,primary_link,secondary,tertiary,tertiary_link,unclassified,residential,living_street,service
