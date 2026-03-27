#!/bin/bash

#list of all variables required to create the script and make it easier

memory=$(free -m | awk '/^Mem:/ {printf "Total: %d MB | Used: %d MB | Usage: %.2f%%\n", $2, $3, $3/$2*100}')
disk=$(df -h | awk '$NF=="/"{printf "%s\t\t", $5}')
cpu=$(top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}')
process=$(ps aux --sort=-%mem | awk 'NR==1 || NR<=6 {printf "%-10s %-6s %-6s %s\n", $1, $2, $4, $11}')

output="output.txt"

#curly braces makes it easier to group more than one command as it treats it as one command

{

echo "====DATE:$(date +'%Y-%m-%d_%H-%M-%S')===="
  echo "====Memory is currently:===="
   echo "$memory"
    echo "====Disk space is currently:===="
     echo "$disk"
      echo "====CPU usage is currently:===="
       echo "$cpu"
        echo "====Top 5 Processes===="

           echo "$process"

# the tee command below outputs everything within the curly braces and saves it in the text file. The -a appends so all previous logs are saved instead of being overitten.

  } | tee -a "$output"



# if statement below checks if the text file exits and creates the file with a timestamp

if [[ -f "$output" ]]; then echo "$output created $(date +'%Y-%m-%d_%H-%M-%S')";
fi

# fi ends the script
                                 
