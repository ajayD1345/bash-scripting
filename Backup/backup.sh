#!/bin/bash

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

# Check if source directory exists
if [ ! -d "$1" ]; then
    echo "Source directory '$1' does not exist."
    exit 1
fi

# Create destination directory if it doesn't exist
mkdir -p "$2"

# Create backup filename with timestamp
timestamp=$(date +"%Y%m%d%H%M%S")
backup_file="$2/backup_$timestamp.tar.gz"

# Create tar archive of the source directory
tar -czf "$backup_file" "$1"

echo "Backup created: $backup_file"
