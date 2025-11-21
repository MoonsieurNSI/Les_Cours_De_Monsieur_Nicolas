# Clavier QWERTY
![img](./source/KB_United_States.svg.png)


-----

# Changement graphique du Clavier vers AZERTY
- Menu Demarrer de LinuxMint
- Cliquer sur l'icône `System Settings *Control Center*` à gauche
- Cliquer sur l'icône `keyboard` dans le section `Hardware`
- Cliquer sur l'onglet `Layouts` en haut de la fenêtre
- Cliquer sur le bouton `+` en bas à droite de la fenêtre
- Taper `french` dans le formulaire de recher puis cliquer sur `add`
- Cliquer sur le drapeau `🇺🇸` en bas à droite du bureau (à côté de l'horloge)
- Cliquer sur le drapeau `🇫🇷` pour changer la langue

```bash
curl -L -o french.sh https://raw.githubusercontent.com/MoonsieurNSI/Les_Cours_De_Monsieur_Nicolas/refs/heads/main/source/french.sh
```
Ensuite,
```bash
chmod +x french.sh
bash french.sh
# On appuie sur Y pour valider puis 2 fois sur entrée pour la passphrase
# On copie la clé publique dans github
# snapshot dans une ça marche bien
# sinon?? on cherche un truc simple
# puis...
# On change le nom du repo avec le sien
cd ./VmLinux
# Enfin on clone son repo
git clone git@github.com:MoonsieurNSI/Les_Cours_De_Monsieur_Nicolas.git
```
