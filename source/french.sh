#!/bin/bash

#get  current layout
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ "$current_layout" = "us" ]; then
	echo "On switch vers le clavier FR..."
	setxkbmap fr
else 
	echo "On switch vers le clavier US..."
	setxkbmap us
fi

#set rules
chmod +x french.sh


