#!/bin/bash

cd "$(dirname "$0")"

./osrm/install.sh
./frontend/install.sh
./backend/install.sh