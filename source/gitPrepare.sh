git config --global user.name "MoonsieuNSI"
git config --global user.email "patrice.nicolas7@monlycee.net"

git config --global --list

#cle ssh
ssh-keygen -t ed25519 -C "patrice.nicolas7@monlycee.net"

cat ~/.ssh/id_ed25519.pub
