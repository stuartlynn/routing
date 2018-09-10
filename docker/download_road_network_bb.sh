#!/bin/bash

wget 'http://overpass-api.de/api/interpreter?data=(way["highway"~"road|motorway|trunk|primary|secondary|tertiary|residential|living_street|unclassified"]('$1');>;);out;' -O $2
