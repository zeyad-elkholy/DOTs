!/bin/bash
choice=$(echo -e  "Watch\nDownload" | rofi -dmenu -m 0 -l 2 -p "choose option :  ")

[ $choice = "Watch" ] && /home/zod/scripts/Youtube/Watchyt.sh
[ $choice = "Download"   ] && /home/zod/scripts/Youtube/downloadyt

