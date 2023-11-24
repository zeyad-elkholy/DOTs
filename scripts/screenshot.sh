#!/bin/bash

# Get the active window's name
window_name=$(xdotool getactivewindow getwindowname)

# Replace spaces in the window name with underscores
window_name=${window_name// /_}

# Take a screenshot with the window name as the filenam
scrot ~/Pictures/Screenshots/${window_name}-%b%d::%H%M%S.png
