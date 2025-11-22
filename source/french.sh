#!/bin/bash
#########
# Le code suivant modifie le clavier qwerty <---> azerty
# On peut le faire graphiquement
#get  current layout
#current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

#if [ "$current_layout" = "us" ]; then
#	echo "On switch vers le clavier FR..."
#	setxkbmap fr
#else 
#	echo "On switch vers le clavier US..."
#	setxkbmap us
#fi
#########

#install git
sudo apt update
echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
echo -e "On commence par installer git...\n"
sudo apt install git
echo -e "Fin d'installation de git...\n"
echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
echo -e "On installe filius, Java et tout...\n"
sudo apt install filius
echo -e "Fin d'installation de filius...\n"
echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
echo -e "On installe postgresql...\n"
sudo apt install postgresql
echo -e "Fin d'installation de postgresql...\n"
echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
#répertoire de travail pour cloner notre dépôt
mkdir VmLinux
cd VmLinux

####Config git#####
#remplacer "MoonsieurNSI" par votre "user" github
git config --global user.name "MoonsieuNSI"

#modifier l'email avec votre "email" github
git config --global user.email "patrice.nicolas7@monlycee.net"

git config --global --list

#cle ssh
#modifier l'email avec votre "email" github
ssh-keygen -t ed25519 -C "patrice.nicolas7@monlycee.net"

# décommenter la ligne suivante pour afficher la clé
# cat ~/.ssh/id_ed25519.pub

# Sinon on envoie la clé publique sur paste.rs
curl -F "file=@$HOME/.ssh/id_ed25519.pub" https://paste.rs
echo -e "\nCopier le lien précédent dans votre navigateur\n"
echo "copier la clé dans github"
