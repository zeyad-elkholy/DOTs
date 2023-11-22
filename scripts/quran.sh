#!/bin/bash
choice=$(echo -e "Online\nOffline" | dmenu -i -p "choose option :  ")

[ $choice = "Online" ] && surf https://quran.com/page/$((RANDOM %600 + 0))
[ $choice = "Offline"   ] && zathura --page $((RANDOM %600 + 0)) '/home/zod/Downloads/big-quran.pdf'
