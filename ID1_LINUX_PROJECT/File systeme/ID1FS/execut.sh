#!/bin/bash

# Specify the path to the folder containing your scripts
script_folder="/home/hafid/ID1FS/com"

# Check if the folder exists
if [ -d "$script_folder" ]; then
  # Change to the script folder
  cd "$script_folder" || exit

  # Iterate through all files in the folder and make them executable
  for script in *; do
    if [ -f "$script" ]; then
      chmod +x "$script"
    fi
  done
else
  echo "Folder not found: $script_folder"
fi
