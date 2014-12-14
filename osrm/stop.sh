#!/bin/bash

cd "$(dirname "$0")"
kill -TERM $(cat .pid)
