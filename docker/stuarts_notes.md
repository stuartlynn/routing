# Added a script to grab just the road network from OSM

Run it using # Added a script to grab just the road network from OSM

Run it using
```bash
./download_road_network_bb.sh -9.84,36.31,3.85,43.97 scripts/input/osm.os
```

where -9.84,36.31,3.85,43.97 is the bounding box you want to get.


## Also modified the load and run scripts

Remove the dependence on geoid for now and the rural / urabn distinction.
The first geoid script was being used to partition the data I beleive
and the seccond to select urban rural times for travel.


Will need to bring the latter back in to place and come up with a grid based alternative
for the former.
