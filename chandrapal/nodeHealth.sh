#!/bin/bash

###############################################

# Author: Chandra
# Date:14/03/2024
#
# This script outputs the node health
# Version:v1
###############################################
set -x # debug mode
#echo "Print the disc space"
df -h

#echo "Print the memory"
free -g

#echo "Print number of cpu"
nproc

