#!/bin/bash

################
# Looping Concept
#
# Author:Chandra
#
# Version:0.0.1
#
#################

for a in {1..50};
do
if [` expr $a % 2 ` == 0 ];
then
    echo "$a is even number"
else
    echo "$a is odd number"
fi;
done
