#!/bin/bash

directory="/home/salman/bash_demo"
file="/home/salman/bash_demo/demo.txt"


if [[ -d "$directory" ]]; then

echo "$directory already exists!"
  else
   mkdir -p $directory
   echo "$directory created"

fi 


if [[ -f "$file" ]]; then
  echo "File $file already exists"
   else 
	touch "$file"   
      echo "File $file has been created"

fi

       echo "A simple script to create a folder and a text file: $(date '+%Y-%m-%d %H:%M:%S')" >> "$file"
echo "This file was created on: $(date +'%Y-%m-%d_%H-%M-%S')"


cat "$file"

