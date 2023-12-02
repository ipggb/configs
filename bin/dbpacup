#!/bin/sh

# dependency: pacman-contrib

ping -c 1 -q archlinux.org >&/dev/null
if [ $? -eq 0 ]; then
	echo 󰏖 $(checkupdates | wc -l)
else
    	echo "󰏖 0"
fi
