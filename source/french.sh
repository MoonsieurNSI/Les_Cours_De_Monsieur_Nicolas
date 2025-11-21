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

#install git
sudo apt install git
mkdir VmLinux
cd VmLinux

#config git
#remplacer "user" et "email"
git config --global user.name "MoonsieuNSI"
git config --global user.email "patrice.nicolas7@monlycee.net"

git config --global --list

#cle ssh
ssh-keygen -t ed25519 -C "patrice.nicolas7@monlycee.net"

# cat ~/.ssh/id_ed25519.pub
# On envoie la clé publique sur paste.rs
curl -F "file=@$HOME/.ssh/id_ed25519.pub" https://paste.rs
echo "\n copier le lien précédent dans votre navigateur"
echo "copier la clé dans github"
