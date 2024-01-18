#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_file output_file"
    exit 1
fi

input_file="$1"
output_file="$2"

# Check if the input file exists
if [ ! -e "$input_file" ]; then
    echo "Error: Input file not found."
    exit 1
fi

# Check if the input file is readable
if [ ! -r "$input_file" ]; then
    echo "Error: Unable to read from the input file."
    exit 1
fi

# Get line count for input file
input_line_count=$(wc -l < "$input_file")

# Perform duplicate removal using awk
awk '!seen[$0]++' "$input_file" > "$output_file"

# Check if the output file was created successfully
if [ $? -eq 0 ]; then
    # Get line count for output file
    output_line_count=$(wc -l < "$output_file")

    echo "Duplicates removed. Result saved to $output_file"
    echo "Input file lines: $input_line_count"
    echo "Output file lines: $output_line_count"
else
    echo "Error: Failed to create the output file."
fi
