#!/bin/bash

#Author: Jonathan Banerjee
#Created: 19th June 2022
# Last Modified: 19th June 2022

#Description:
#Prompts you to remove all files in a specified folder that 
#has not been modified within a given number of days.

#Usage: ./cruft_remover.sh

read -p 'Which folder do you want to remove unmodified files 
from?: folder
read -p "How many days is too old?: " days

readarray -t files < <(find $folder -maxdepth 1 -type f - 
mtime "+$days")

for file in "${files[@]}"; do
	rm -i "$file"
done
