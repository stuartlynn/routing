UPDATE osm_way_classes SET default_maxspeed = CASE 
	WHEN name = 'road'              THEN 20 -- Rare -- basically unclassified.
	WHEN name = 'motorway'          THEN 70 -- Interstates
	WHEN name = 'motorway_link'     THEN 40
	WHEN name = 'motorway_junction' THEN 40 -- empty 
	WHEN name = 'trunk'             THEN 55 -- Lake Shore Driver, major highways
	WHEN name = 'trunk_link'        THEN 30 -- 
	WHEN name = 'primary'           THEN 35 -- Commerical strips w/ stoplights.
	WHEN name = 'primary_link'      THEN 40 -- 
	WHEN name = 'secondary'         THEN 25 
	WHEN name = 'tertiary'          THEN 25 
	WHEN name = 'residential'       THEN 20 
	WHEN name = 'living_street'     THEN 20 
	WHEN name = 'service'           THEN 15 
	WHEN name = 'track'             THEN 10 
	WHEN name = 'pedestrian'        THEN 2 
	WHEN name = 'services'          THEN 2 
	WHEN name = 'bus_guideway'      THEN 2 
	WHEN name = 'path'              THEN 5 
	WHEN name = 'cycleway'          THEN 10 
	WHEN name = 'footway'           THEN 2 
	WHEN name = 'bridleway'         THEN 2 
	WHEN name = 'byway'             THEN 2 
	WHEN name = 'steps'             THEN 0.1 
	WHEN name = 'unclassified'      THEN 5 
	WHEN name = 'secondary_link'    THEN 20 
	WHEN name = 'tertiary_link'     THEN 20 
	WHEN name = 'lane'              THEN 10 -- Bikes 
	WHEN name = 'track'             THEN 10 
	WHEN name = 'opposite_lane'     THEN 10 
	WHEN name = 'opposite'          THEN 10 
	WHEN name = 'grade1'            THEN 10 
	WHEN name = 'grade2'            THEN 10 
	WHEN name = 'grade3'            THEN 10 
	WHEN name = 'grade4'            THEN 10 
	WHEN name = 'grade5'            THEN 10 
	WHEN name = 'roundabout'        THEN 25 -- Almost none.
  ELSE 25
	END;

