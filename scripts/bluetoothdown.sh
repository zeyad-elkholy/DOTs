#!/bin/bash

# Check if Bluetooth is currently blocked or unblocked
bluetooth_status=$(rfkill list bluetooth | grep -oP '(?<=Soft blocked: )\w+')

if [ "$bluetooth_status" == "yes" ]; then
    # Bluetooth is currently blocked, unblock it
    doas rfkill unblock bluetooth
    echo "Bluetooth is now enabled."
elif [ "$bluetooth_status" == "no" ]; then
    # Bluetooth is currently unblocked, block it
    doas rfkill block bluetooth
    echo "Bluetooth is now disabled."
else
    echo "Error: Unable to determine Bluetooth status."
fi

