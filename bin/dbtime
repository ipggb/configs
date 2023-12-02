#!/bin/sh

# echo  󰔚 $(date '+%I:%M%p')
# Get current Hour and Minute
hour=$(date '+%I')
minute=$(date '+%M')

# Use different nerd font icons based on the hour
case $hour in
    01) icon="󱑆";;
    02) icon="󱑉";;
    03) icon="󱑃";;
    04) icon="󱑂";;
    05) icon="󱑇";;
    06) icon="󱐿";;
    07) icon="󱑅";;
    08) icon="󱑄";;
    09) icon="󱑈";;
    10) icon="󱑊";;
    11) icon="󱑀";;
    12) icon="󱑆";;
esac

# Print the icon and the time to the console
echo "$icon $(date '+%I:%M%p')"
