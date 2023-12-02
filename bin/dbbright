#!/bin/sh

# Get the current brightness level
bright=$(xbacklight -get | awk '{printf "%.0f%%\n", $1}')

# Remove the % sign from the brightness
bright=${bright%\%}

# Use different nerd font icons based on the brightness level
if [[ $bright -gt 75 && $bright -le 100 ]]; then
    icon="󰃠"
elif [[ $bright -gt 50 && $bright -le 75 ]]; then
    icon="󰃝"
elif [[ $bright -gt 25 && $bright -le 50 ]]; then
    icon="󰃟"
elif [[ $bright -le 25 ]]; then
    icon="󰃞"
else
    icon="󰃠"
fi

# Print the icon and the brightness to the console
echo "$icon $bright%"
