
> [!IMPORTANT]
> Le tutoriel suivant a été écrit sur `LinuxMint Debian Edition` mais devrait fonctionner (avec plus ou moins d'ajustements) sur les distributions Linux basées sur <a href="./img/debianTree.txt">Debian</a> (en fait celles utilisant nativement `apt` comme gestionnaire de packages):
>  #### Debian Based:
> - [x] LinuxMint Debian Edition (LMDE)
> - [x] Debian
> - [x] PureOS
> - [x] SpiralLinux
> - [x] MX Linux
> - [X] Devuan Linux
> - [x] Sparky Linux
> - [x] PeppermintOS 
>  ---------
>  #### Ubuntu Based:
> - [x] LinuxMint
> - [x] Ubuntu Cinnamon
> - [x] Bodhi Linux
> - [X] Lubuntu 
> - [ ] Edubuntu, Kubuntu, Xubuntu...
> 
> - Rendez-vous sur <a href="https://distrosea.com/" target="_blank"> distrosea.com</a>, se connecter et choisir la dernière version d'une distribution *Debian Based* (de préférence).
> - Quand cela est possible, choisir son bureau préféré: par exemple `Cinnamon`, `Gnome`, `xfce`, `Plasma`, ...

-------------

### Changement graphique du Clavier vers AZERTY
> [!IMPORTANT]
> - **Dans votre VM (*Virtual Machine*)**, ouvrir un `Terminal` et appuyer sur la touche <kbd>a</kbd>.
> - Si la lettre `q` apparaît alors votre clavier est `Qwerty`.
> - Tentez de le modifier graphiquement:
>   - Avec un bureau `Cinnamon`,
>   - Cliquer sur l'icône `System Settings *Control Center*` 
>   - Cliquer sur l'icône `keyboard` dans le section `Hardware`
>   - Cliquer sur l'onglet `Layouts` en haut de la fenêtre
>   - Cliquer sur le bouton `+` en bas à droite de la fenêtre pour ajouter une autre langue
>   - Taper `french` dans le formulaire de recherche puis cliquer sur `add`
>   - Cliquer sur le drapeau `🇺🇸` en bas à droite du bureau (à côté de l'horloge)
>   - Cliquer sur le drapeau `🇫🇷` pour changer la langue

-------------

> [!WARNING]
> - **Avant de commencer quoi que ce soit, assurez-vous que votre dépot `github` est crée et modifier le script `setup.sh` en conséquence : c'est crucial !**
> - Editer le fichier `setup.sh` et chercher la ligne suivante:
>   ```sh
>   ####DEBUT de Config git#####
>   ```
> - Lire les commentaires et apporter les changements nécessaires
> - Ne pas oublier de *commit* les changements sur github
> - Cliquer sur `raw` et conserver l'url de la page

-------------

> [!IMPORTANT]
> - **Dans votre VM**, ouvrir une fenêtre `Terminal`
> - Taper la commande `which curl`
> - En théorie on s'attend à une réponse telle que `/usr/bin/curl`
> - **En l'absence de réponse**, installer l'utilitaire `curl` avec la commande:
>   ```bash
>   sudo apt install curl
>   ```
> - Exécuter la commande suivante:
>   ```bash
>   curl https://sharetext.io/api/text?slug=61640708
>   ```
> - **Sélectionner et copier la Première Commande** avec la combinaison <kbd>CTRL+SHIFT+C</kbd>
> - **Sans l'exécuter**, coller la première commande  avec la combinaison <kbd>CTRL+SHIFT+V</kbd>
>   ```bash
>     curl -L -o setup.sh https://raw.githubusercontent.com/MoonsieurNSI/Les_Cours_De_Monsieur_Nicolas/refs/heads/main/source/setup.sh \
>     && chmod +x setup.sh \
>     && ./setup.sh
>    ```
> 
> - **Dans le terminal de la VM**, copier votre url `raw` afin d'adapter **le nom d'utilisateur et le nom du dépôt**: <br>
>   ```html
>   https://raw.githubusercontent.com/utilisateur/dépôt/..../setup.sh
>   ```
> - Appuyer sur <kbd>enter</kbd> pour exécuter la commande
------------


- Le script installe tour à tour `git`, `postgresql`, ...
- L'exécution doit se mettre en pause lors de la création des clés SSH.
- On appuie sur <kbd>Enter</kbd> pour la location du fichier (*Enter file in which to save the key:*)
- puis 2 fois sur <kbd>Enter</kbd> pour la passphrase (*Enter passphrase*)

-----------
> [!IMPORTANT]
> - Si on se connecte à github depuis sa VM alors on copie la clé depuis le *shell* avec <kbd>CTRL+SHIFT+C</kbd>
> - Sinon, on copie la clé publique depuis le lien qui s'affiche: `https://paste.rs/xxxxx`
> -------------
> 
> **Copier entièrement la ligne qui devrait commencer par `ssh-ed25519` et se terminer par votre email.**
> ```bash
> ssh-ed25519 .... @monlycee.net
> ```

--------------
- Aller sur github depuis votre machine ou votre VM
- Dans github, on clique sur son icône en haut à droite 
- puis menu `settings` puis à gauche on descend vers le menu `SSH and GPG keys`
- On clique sur `New SSH Key`
- On donne un titre à la clé et on colle la clé publique SSH dans la zone `Key` 
- [Facultatif => Supprimer les clés obsolètes]
- Entrer votre mot de passe si github vous demande de confirmer votre identité
- On retourne sur la VM si on n'y était pas et on change de dossier
  ```bash
  # Pour travailler dans un dossier dédié
  cd VM
  ```
- On copie la **Deuxième Commande** `curl` 
- Cloner son repo avec les bons noms (ici c'est le mien !!)
  ```bash
  git clone git@github.com:MoonsieurNSI/Les_Cours_De_Monsieur_Nicolas.git
  ```
- Repondre `yes` à la question *Are you sure...*
- Vous pouvez vous déplacer dans votre repo local avec la 3e commande:
  ```bash
  # ici c'est encore le mien !!!
  cd Les_Cours_De_Monsieur_Nicolas
  ```
