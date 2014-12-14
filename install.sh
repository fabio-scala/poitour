#!/bin/bash

# Current script dir
cd "$(dirname "$0")"

# Run all install scripts
./osrm/install.sh
./frontend/install.sh
./backend/install.sh