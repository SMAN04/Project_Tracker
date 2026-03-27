#!/bin/bash

files="/home/salman/for_backup"



read -rp "enter a source directory: " directory

if [ -d "$directory" ]; then
	echo "$directory already exists"
	 else
           mkdir -p "$directory"
	   echo "$directory  has been created on: $(date '+%Y-%m-%d %H:%M:%S') Copying .txt files..."

fi

#initializes count
count=0

# Loop through .txt files and copy them
for file in "$files"/*.txt; do
    if [ -f "$file" ]; then
        cp "$file" "$directory"/
        ((count++))
    fi
done

echo "Files have been backed up: $count  $(date '+%Y-%m-%d %H:%M:%S')"





