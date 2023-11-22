#!/bin/bash

calculate_total_time() {
    total_time=0

    for file_path in "$@"; do
        # Run ffprobe command to get video duration
        duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$file_path")
        
        # Convert duration to float and add to total time
        total_time=$(awk "BEGIN {print $total_time + $duration}")
    done

    echo "Total time: $total_time seconds"
}

# Open file dialog to select multiple video files
file_paths=$(zenity --file-selection --multiple --title="Select video files" --file-filter="Video Files | *.mp4 *.avi *.mkv")

# Calculate total time
calculate_total_time $file_paths


