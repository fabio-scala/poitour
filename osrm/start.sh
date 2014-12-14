#!/bin/bash

cd "$(dirname "$0")"
nohup ./server/build/osrm-routed server/build/switzerland-latest.osrm -i 0.0.0.0 -p 8080 > /dev/null 2>&1 & echo $! > .pid