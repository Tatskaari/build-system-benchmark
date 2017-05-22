#!/bin/bash

CPU_COUNT="$(grep -c processor /proc/cpuinfo)";

./generate_sources.py
scons -s -j ${CPU_COUNT}
