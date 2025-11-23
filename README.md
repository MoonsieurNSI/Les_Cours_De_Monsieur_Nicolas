
> [!IMPORTANT]
> Le tutoriel suivant a été écrit sur `LinuxMint` mais devrait fonctionner (avec plus ou moins d'ajustements) sur les distributions Linux basées sur `Debian` ou `Ubuntu` parmi lesquelles:
>  #### Debian Based:
> - [x] LinuxMint Debian Edition (LMDE)
> - [x] Debian
> - [x] PureOS
> - [x] SpiralLinux
>  #### Ubuntu Based:
> - [x] LinuxMint
> - [x] Ubuntu Cinnamon
> - [ ] Edubuntu, Kubuntu, Lubuntu, Xubuntu...
- Rendez-vous sur <a href="https://distrosea.com/" target="_blank"> distrosea.com</a>, se connecter et choisir la dernière version d'une distribution *Debian Based*, si possible `LinuxMint`.
- Quand cela est possible, choisir son bureau préféré: par exemple `Cinnamon`, `Gnome`, `xfce`, `Plasma`, ...

-------------

### Changement graphique du Clavier vers AZERTY
> [!IMPORTANT]
> - Ouvrir un `Terminal` et appuyer sur la touche <kbd>a</kbd>.
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

- Dans votre machine virtuelle, ouvrir `Firefox` et cliquer plusieur fois sur `skip this step` et enfin `start browsing`
- Dans la barre d'adresse du navigateur taper [https://sharetext.io/61640708](https://sharetext.io/61640708) pour copier la première commande (ci-après)...ou taper la directement dans votre console si vous êtes chaud.

```bash
curl -L -o setup.sh https://raw.githubusercontent.com/MoonsieurNSI/Les_Cours_De_Monsieur_Nicolas/refs/heads/main/source/setup.sh \
  && chmod +x setup.sh \
  && ./setup.sh
```
> [!IMPORTANT]
> - Ouvrir un terminal puis coller la commande `curl` **sans l'exécuter** avec la combinaison <kbd>CTRL+SHIFT+V</kbd>
> - **Modifier le nom d'utilisateur et le nom du dépôt**: <br>
>   ```html
>   https://raw.githubusercontent.com/utilisateur/dépôt/....
>   ```
> - Appuyer sur <kbd>enter</kbd> pour exécuter la commande
------------


- Le script installe tour à tour `git`, `postgresql`, ...
- L'exécution doit se mettre en pause lors de la créatin des clés SSH.
- On appuie sur <kbd>Enter</kbd> pour la location du fichier (*Enter file in which to save the key:*)
- puis 2 fois sur <kbd>Enter</kbd> pour la passphrase (*Enter passphrase*)
- On copie la clé publique depuis le lien qui s'affiche: `https://paste.rs/xxxxx`
- ------------
> [!IMPORTANT]
> Copier entièrement la ligne qui devrait commencer par `ssh-ed25519` et se terminer par votre email.
> ```bash
> ssh-ed25519 .... @monlycee.net
> ```

--------------
- [Autre Option => snapshot dans une ça marche bien sur une IA aussi]
- Dans github, on clique sur son icône en haut à droite 
- puis menu `settings` puis à gauche on descend vers le menu `SSH and GPG keys`
- On clique sur `New SSH Key`
- On donne un titre à la clé et on colle la clé publique SSH dans la zone `Key` 
- [Facultatif => Supprimer les clés obsolètes]
- Entrer votre mot de passe si github vous demande de confirmer votre identité
- On retourne sur la VM si on n'y était pas
- On récupère la deuxième commande [https://sharetext.io/61640708](https://sharetext.io/61640708)
- On clone son repo (ici c'est le mien !!)
  ```bash
  git clone git@github.com:MoonsieurNSI/Les_Cours_De_Monsieur_Nicolas.git
  ```
- Repondre `yes` à la question *Are you sure...*
- Vous pouvez vous déplacer dans votre repo local avec la 3e commande:
  ```bash
  # ici c'est encore le mien !!!
  cd Les_Cours_De_Monsieur_Nicolas
  ```
