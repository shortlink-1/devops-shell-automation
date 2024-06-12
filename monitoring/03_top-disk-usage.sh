#!/bin/bash

# Assign the path provided as the first argument to the variable 'path'
path="$1"

du -ah "$path" | sort -rh | head -n 3 > /home/meghana/Desktop/scripts/file.txt

# Print the contents of the file
cat /home/meghana/Desktop/scripts/file.txt

