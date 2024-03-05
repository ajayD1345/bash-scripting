#!/bin/bash

# Default value for the number of entries to return
DEFAULT_N=8

# Function to display usage information
usage() {
    echo "Usage: $0 [-d] [-n N] <directory>"
    echo "Options:"
    echo "  -d: List all files and directories within the specified directory"
    echo "  -n N: Return the top N entries (default is $DEFAULT_N)"
    exit 1
}

# Parse command-line arguments
while getopts ":dn:" opt; do
    case $opt in
        d)
            list_all=true
            ;;
        n)
            num_entries=$OPTARG
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            usage
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            usage
            ;;
    esac
done
shift $((OPTIND -1))

# Set the number of entries to default if not provided
num_entries=${num_entries:-$DEFAULT_N}

# Check if a directory argument is provided
if [ "$#" -ne 1 ]; then
    usage
fi

directory="$1"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory '$directory' does not exist."
    exit 1
fi

# Display disk usage
if [ "$list_all" = true ]; then
    du -ah "$directory" 2>/dev/null | sort -rh | head -n "$num_entries"
else
    du -h "$directory" 2>/dev/null | sort -rh | head -n "$num_entries"
fi

