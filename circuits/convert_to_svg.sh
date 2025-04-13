#!/bin/bash

# Directory containing JSON files
directory="."  # Change this if your files are in a different directory

# Iterate over each .json file in the directory
for file in *; do
    # Extract filename without extension
    filename="$(basename -- "$file" .json)"
    
    # Run the conversion command
    echo "$file | geojson-to-svg-cli > $filename.svg"
    cat "$file" | geojson-to-svg > "$filename.svg"
    
    echo "Converted: $file -> $filename.svg"
done
