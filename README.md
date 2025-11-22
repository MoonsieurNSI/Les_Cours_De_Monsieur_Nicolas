
> [!IMPORTANT]
> Le tutoriel suivant a été écrit sur `LinuxMint` mais devrait fonctionner (avec plus ou moins d'ajustements) sur les distributions Linux basées sur `Debian` parmi lesquelles:
> - [x] LinuxMint
> - [x] LinuxMint Debian Edition
> - [x] Debian
> - [x] PureOS
> - [x] SpiralLinux
> - [x] Ubuntu Cinnamon
> - [ ] Edubuntu, Kubuntu, Lubuntu, Xubuntu...
- Rendez-vous sur [https://distrosea.com/](https://distrosea.com/), se connecter et choisir la dernière version d'une distribution *Debian Based*, si possible `LinuxMint`.
- Quand cela est possible, choisir son bureau préféré: par exemple `Cinnamon`, `Gnome`, `xfce`, `Plasma`, ...

-------------

# Changement graphique du Clavier vers AZERTY
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
> Ouvrir un terminal et s'assurer que la commande `curl` est présente:
> ```bash
> which curl
> ```
> Si une réponse comme `/usr/bin/curl` apparaît alors c'est ok sinon, il faut commencer par installer la commande
> ```bash
> sudo apt install curl
> ```
> **Avant de commencer quoi que ce soit, assurez-vous que votre dépot `github` est crée et modifier le script `french.sh` en conséquence : c'est crucial !**

- Ouvrir `Firefox` et cliquer plusieur fois sur `skip this step` et enfin `start browsing`
- Dans la barre d'adresse du navigateur taper [https://sharetext.io/61640708](https://sharetext.io/61640708) pour copier la première commande (ci-après)...ou taper la directement dans votre console si vous êtes chaud.

```bash
curl -L -o setup.sh https://raw.githubusercontent.com/MoonsieurNSI/Les_Cours_De_Monsieur_Nicolas/refs/heads/main/source/setup.sh \
  && chmod +x setup.sh \
  && ./setup.sh
```
- Ouvrir un terminal puis coller la commande `curl` **sans l'exécuter** avec la combinaison <kbd>CTRL+SHIFT+V</kbd>
- **Modifier le nom d'utilisateur et le nom du dépôt**: <br>
```html
https://raw.githubusercontent.com/utilisateur/dépôt/....
```
- Appuyer sur <kbd>enter</kbd> pour exécuter la commande
------------
- Le script installe tour à tour `git` et `postgresql`
- On appuie sur <kbd>y</kbd> puis <kbd>Enter</kbd> pour valider autant de fois que nécessaire
- On appuie sur <kbd>Enter</kbd> pour la location du fichier (*Enter file in which to save the key:*)
- puis 2 fois sur <kbd>Enter</kbd> pour la passphrase (*Enter passphrase*)
- On copie la clé publique depuis le lien qui s'affiche: `https://paste.rs/xxxxx`
- Autre Option => [snapshot dans une ça marche bien sur une IA aussi]
- Dans github, on clique sur son icône en haut à droite 
- puis menu `settings` puis à gauche on descend vers le menu `SSH and GPG keys`
- On clique sur `New SSH Key`
- On donne un titre à la clé et on colle la clé publique SSH dans la zone `Key` dédiée
- Optionnel => [Supprimer les clés obsolètes]
- On retourne sur la VM si on n'y était pas
- On récupère la deuxième commande [https://sharetext.io/61640708](https://sharetext.io/61640708)
- On clone son repo (ici c'est le mien)
  ```bash
  git clone git@github.com:MoonsieurNSI/Les_Cours_De_Monsieur_Nicolas.git
  ```
- Repondre `yes` à la question *Are you sure...*
- Vous pouvez vous déplacez dans votre repo local avec la 3e commande:
  ```bash
  # ici c'est le mien
  cd Les_Cours_De_Monsieur_Nicolas
  ```
