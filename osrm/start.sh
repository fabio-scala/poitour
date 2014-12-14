#!/bin/bash

# Current script dir
cd "$(dirname "$0")"

# Start OSRM in background and save PID for stop script
nohup ./server/build/osrm-routed server/build/switzerland-latest.osrm -i 0.0.0.0 -p 8080 > /dev/null 2>&1 & echo $! > .pid
