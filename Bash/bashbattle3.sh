#!/bin/bash

while true;do 

	echo "1. Check a file"
	echo "2. Create a file"
	echo "3. Exit.."

read -rp "what would you like to do?" choice

case "$choice" in 

1) 

read -rp "Enter a filename to check: " file

if [ -f "$file" ]; then
    echo "$file exists"

         if [ -r "$file" ]; then
            
 [ -r "$file" ] && echo "✓ The file is readable" || echo "✗ The file is not readable"
 [ -w "$file" ] && echo "✓ The file is writable" || echo "✗ The file is not writable"
 [ -x "$file" ] && echo "✓ The file is executable" || echo "✗ The file is not executable"

            else
                echo "✗ $file does not exist"
		fi 
            fi
            ;;


2) 
   read -rp "Enter a filename:" file
    if [ -f "$file" ] ; then
	    echo "$file already exists!"
             else 
	      touch "$file"
	       echo "$file has been created"

	    fi 

	    ;;

3) 
   echo "Exiting.."
	      
 break
 ;;
    
*) 
   echo "Invalid choice. Please pick 1, 2, or 3."
   ;;


esac

read -rp "Please Enter to return to the menu..."

done


