#!/bin/bash

mean_degree=$1
num_classes=$2
num_portals=$3

# Batch 1 - Small Map
python3 ./dungeon-generator.py 10 $mean_degree $num_classes 1 5 1 ./small_map_${mean_degree}_${num_classes}.pddl

# Batch 2 - Medium Map Danger
python3 ./dungeon-generator.py 50 $mean_degree $num_classes 40 10 $num_portals ./medium_danger_${mean_degree}_${num_classes}.pddl

# Batch 3 - Medium Rich
python3 ./dungeon-generator.py 50 $mean_degree $num_classes 10 40 $num_portals ./medium_rich_${mean_degree}_${num_classes}.pddl

# Batch 4 - Medium Rich Danger
python3 ./dungeon-generator.py 50 $mean_degree $num_classes 40 40 $num_portals ./medium_rich_danger_${mean_degree}_${num_classes}.pddl

# Batch 5 - Huge
python3 ./dungeon-generator.py 150 $mean_degree $num_classes 100 100 $num_portals ./huge_${mean_degree}_${num_classes}.pddl
