#!/bin/sh

# Check if PulseAudio is muted
muted=$(pamixer --get-mute)

# Print the appropriate message based on mute status
if [[ $muted == "false" ]]; then
    # Get the current volume of the default sink
    vol=$(pamixer --get-volume-human)

    # Remove the % sign from the volume
    vol=${vol%\%}

    # Use different nerd font icons based on the volume level
#    if [[ $vol -gt 75 && $vol -le 100 ]]; then
    if [[ $vol -gt 75 ]]; then
        icon=""
    elif [[ $vol -gt 50 && $vol -le 75 ]]; then
        icon="󰕾"
    elif [[ $vol -gt 25 && $vol -le 50 ]]; then
        icon="󰖀"
    elif [[ $vol -gt 0 && $vol -le 25 ]]; then
        icon=""
    elif [[ $vol -eq 0 ]]; then
        icon="󱄡"
    else
        icon=""
    fi

    # Print the icon and the volume to the console
    echo "$icon $vol%"
else
    echo "󰸈 "
fi
