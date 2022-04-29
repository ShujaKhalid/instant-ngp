#!/bin/bash

if [[ $1 == "--train" ]] 
then 
	./build/testbed --scene data/nerf/cholec80/
elif [[ $1 == "--colmap" ]]
then
	python scripts/colmap2nerf.py --colmap_matcher sequential --run_colmap --aabb_scale 16 --out ./data/nerf/cholec80/transforms.json
else
	echo "No input provided"
fi
