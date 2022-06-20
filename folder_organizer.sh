#!/bin/bash

#Author: Jonathan Banerjee
#Created: 19th June 2022
# Last Modified: 19th June 2022

#Description:
#Prompts you to remove all files in a specified folder that 
#has not been modified within a given number of days.

#Usage: ./folder_organizer.sh

# Keeps a folder specified by the user clean by moving files 
#into
# folders based on their file extensions

# Usage: ./folder_organiser.sh

read -p "Which folder do you want to organise?: " folder

while read filename; do
    case "$filename" in
        *.jpg|*.jpeg|*.png)
            subfolder="images" ;;
        *.doc|*.docx|*.txt|*.pdf)
            subfolder="documents" ;;
        *.xls|*.xlsx|*.csv)
            subfolder="spreadsheets" ;;
        *.sh)
            subfolder="scripts" ;;
        *.zip|*.tar|*.tar.gz|*.tar.gz.bz2)
            subfolder="archives" ;;
        *.ppt|*.pptx)
            subfolder="presentations" ;;
        *.mp3)
            subfolder="audio" ;;
        *.mp4)
            subfolder="video" ;;
        *)
            subfolder="." ;;
    esac

    if [ ! -d "$folder/$subfolder" ]; then
       mkdir "$folder/$subfolder"
    fi

    mv "$filename" "$folder/$subfolder"
done < <(ls "$folder")

