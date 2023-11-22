#!/bin/bash
choice=$(echo -e "480P\n 720P\n Any" | dmenu -i -p "choose option :  ")

[ $choice = "720P" ] && mpv --profile=r720P $(xclip -o)
[ $choice = "480P"   ] && mpv --profile=r480P $(xclip -o)
[ $choice = "Any" ] && mpv $(xclip -o)
