#!/bin/bash
choice=$(echo -e "480P\n 720P\n Audio\n Any" | dmenu  -l 4 -i -p "choose option :  ")

[ $choice = "720P" ] && mpv --profile=r720P $(wl-paste)
[ $choice = "480P"   ] && mpv --profile=r480P $(wl-paste)
[ $choice = "Audio"   ] && mpv --no-video $(wl-paste)
[ $choice = "Any" ] && mpv $(wl-paste)
