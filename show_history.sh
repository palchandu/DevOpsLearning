#!/bin/bash

echo "Executing some commands..."
ls -l
date

# Force history update
history -a
history -c
history -r

# Now display the history
history
