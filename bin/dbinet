#!/bin/sh

# dependency: wireless_tools

# Check if the device is connected to the internet
if ping -q -c 1 'archlinux.org' >/dev/null; then
    # Check if the device is connected via ethernet
    if [[ $(cat /sys/class/net/eno1/operstate) == "up" ]]; then
        echo "󰈀"
    else
        # Check if the device is connected via wifi
        if [[ $(cat /sys/class/net/wlo1/operstate) == "up" ]]; then
            # Get the name of the wifi network
            ssid=$(iwgetid -r)
            echo "  $ssid"
        else
            echo "󰪎 "
        fi
    fi
else
    echo "󰪎 "
fi
