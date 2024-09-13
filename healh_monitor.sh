#!/bin/bash


#######################################################################################################

# Author:Chandra
#
# Date:09/09/24
#
# This script outputs the node health
#
# Version: v1

########################################################################################################


#echo "Print the disc space"
#set -x # for debug mode

#set -e # exit the script when there is an error
# Exmaple
# cdgdgfgfgfgfgh
#set -o pipefail # Exit the script when pipe fail
#Example 
# sdsdfdgfgfg | sfddggfgfgf | gfgfgfhghgh

# Pull All In One
 set -exo pipefail

df -h


#echo "Print memory usage"

free -g

#echo "Prnt the cpu"

nproc
