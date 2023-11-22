#!/bin/bash
mpv --shuffle --playlist=/home/zod/audio/coms/ --loop-file=no --keep-open=no
touch "/home/zod/timer_history/$(date +'%Y-%m-%d').md"
echo 1 >> "/home/zod/timer_history/$(date +'%Y-%m-%d').md"

