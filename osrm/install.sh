#!/bin/bash

cd "$(dirname "$0")"

# Install prerequisites (toolchain)
sudo apt-get update
sudo apt-get install build-essential git cmake pkg-config libprotoc-dev libprotobuf8 protobuf-compiler libprotobuf-dev libosmpbf-dev libpng12-dev libbz2-dev libstxxl-dev libstxxl-doc libstxxl1 libxml2-dev libzip-dev libboost-all-dev lua5.1 liblua5.1-0-dev libluabind-dev libluajit-5.1-dev libtbb-dev -y

mkdir server/build
cd server/build

# Compile OSRM
cmake ..
make

# Fetch OSM data extract of Switzerland from Geofabrik
wget http://download.geofabrik.de/europe/switzerland-latest.osm.pbf

# Extract OSM data
LUA_PATH="`readlink -f ../../profiles/lib`/?.lua" ./osrm-extract switzerland-latest.osm.pbf --profile=../../profiles/foot-city.lua

# Generate OSRM files
LUA_PATH="`readlink -f ../../profiles/lib`/?.lua" ./osrm-prepare switzerland-latest.osrm --profile=../../profiles/foot-city.lua

read -p 'Do you want to start OSRM on 0.0.0.0:8080 now? [Y/n] ' -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'You can use stop.sh to stop OSRM'
    ../../start.sh
fi