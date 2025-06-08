#!/bin/bash

# Get the URL from the clipboard
URL=$(wl-paste)

# Ask user for the start and end times in MINUTES (or HH:MM:SS for >1 hour)
SEGMENT=$(rofi -dmenu -p "Enter segment (start-end min, or HH:MM:HH:MM):")

# Parse the input
IFS='-' read -r START END <<< "$SEGMENT"

# Convert input to HH:MM:00, ignoring seconds
to_hms_minute_only() {
    local t=$1
    if [[ $t =~ : ]]; then
        # Extract hours and minutes, ignore seconds if present
        IFS=':' read -r h m _ <<< "$t"
        printf "%02d:%02d:00" $((10#$h)) $((10#$m))
    else
        # Input is in minutes only
        printf "%02d:%02d:00" $((t/60)) $((t%60))
    fi
}

START=$(to_hms_minute_only "$START")
END=$(to_hms_minute_only "$END")
SEGMENT_LABEL="${START:0:5}_${END:0:5}"

# Run yt-dlp with download-sections
kitty yt-dlp -o "/home/zod/Downloads/YouTube/%(channel)s/%(title)s-${SEGMENT_LABEL}.%(ext)s" -f "[height<=720]" -R "infinite" --download-sections "*$START-$END" "$URL"

notify-send "yt-dlp" "Downloaded segment $START-$END from $URL"
