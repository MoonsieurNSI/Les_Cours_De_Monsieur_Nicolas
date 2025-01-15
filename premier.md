# Chapitre: le langage HTML

1. Historique:

    - 1970 - 1980 : développement des réseaux informatiques <br>
    => USA: ARPANET
    Les ordinateurs apprennent à communiquer entre eux
en utilisant des languages (des protocoles) tels que
TCP/IP.

    - 1990 : C'est la naissance du protocole HTTP qui permet
à des machines d'échanger du texte "amélioré" : `l'hypertext`.<br>
=> Tim Berners LEE (_anglais_) et Robert CAILLIAU (_belge_) sont à l'origine du projet.<br> 
=> texte amélioré => texte avec lequel l'utilisateur
peut interagir  

> **Editer un fichier html** <br>
Pour écrire un fichier de texte amélioré, il suffit de lui coller l'extension `.html`<br> 
*Exemple:* `premier.html` 

2. Le langage HTML

=> [Site des Développeurs de Mozilla](fhttps://developer.mozilla.org/en-US/docs/Web/HTML)

<br>
HTML : HyperText Markup Language <br> 
<p style="text-align:justify;">
Il s'agit d'un langage déclaratif qui indique au 
navigateur (Firefox, Chrome, ...) ce que l'utilisateur 
doit voir.
</p>
<p style="text-align:justify;">
Pour cela, on utilise un éditeur de texte/code (Visual Studio Code,
SublimText, Vim...).
On (le développeur) se sert des balises pour indiquer ce que l'on veut.
</p>
Il existe deux grands types de balises:

- les balises pairées/couplées 
```html
<body></body>
<p></p>
<h1></h1>
```

- les balises orphelines 
```html
<img>
<br>
<meta>
```

Remarques:
* La structure minimale d'un fichier html devrait ressembler à:
```html
<html>
    <head>
     <!--Ici la partie pour les machines-->
    </head>
    <body>
      <!--Ici la partie visibles des utilisateurs-->
    </body>
</html>
```
* Une balise `<Y></Y>` ouverte après une balise `<X></X>` doit être
fermée avant.
```html
<!-- Correct -->
 <x> <y> </y> </x> 
<!-- Correct -->
 <x> </x> <y> </y> 
<!-- Incorrect -->
 <x> <y> </x> </y> 
```

* Un utilisateur peut accéder au code HTML d'une page 
depuis son navigateur avec la combinaison <kbd>ctrl</kbd>+<kbd>U</kbd>. Il est possible
d'inspecter (clic droit) un élément d'une page.

* Quelques balises simples à connaître:
    - `<p></p>` pour un paragraphe avec saut de ligne
    - `<ul></ul>` pour une liste non ordonée
    - `<ol></ol>` pour une liste ordonée
    - `<li></li>` pour les items d'une liste
    - `<a></a>` pour créer des liens

**Remarque:** Très souvent les balises ouvrantes (ou orphelines)
possède un ou plusieurs `attributs`. Certains attributs sont 
spécifiques à un type de balise, d'autres sont généraux.

**Ex:**
- spécifiques:  `href` pour `<a></a>` <br>
=>`<a href="adresseDuFichier"></a>` 

- généraux: `id` et `class`<br>
`<p id="untruc" class="unAutreTruc"></p>`

<p style="text-align:justify;">
Pour des raisons pratiques, on classe souvent les fichiers dans 
des dossiers différents. Le dossier courant s'appelle ./ mais 
il n'est pas nécessaire de toujours l'indiquer. La recherche
se fait toujours par défaut dans ./
</p>


**Remarque:** 
<p style="text-align:justify;">
Bien que conseillé, le symbole <code>./</code> est facultatif.
On peut alors atteindre tous les fichiers ou les dossiers qui
sont plus bas dans l'arborescence.
</p>
<p style="text-align:justify;">
Pour remonter dans l'arborescence et atteindre le dossier du 
niveau juste supérieur, on écrit <code>../</code>
Pour remonter de deux niveaux, c'est <code>../../</code> etc.
</p>
<p style="text-align:justify;">
Un chemin vers un fichier commençant par <code>./</code> ou <code>../</code> est appelé
<code>chemin relatif</code>.
</p>

3. Un fichier `index.html`

::: note  
    En général, la page d'accueil d'un site se nomme `index.html`
=> voir fichier correspondant
:::

- **Avec des images:**<br>

<p style="text-align:justify;">
C'est la balise orpheline <code>&#60;img&#62;</code> qui permet d'insérer une image.
Elle s'accompagne obligatoirement de l'attribut <code>src</code> avec l'adresse 
vers le fichier image. Parfois, on ajoute l'attribut <code>alt</code> en cas 
d'échec de chargement de l'image.
</p>

**Ex:** <code>&#60;img src="../img/planete.jpeg" alt="blabla"&#62;</code> <br>

::: note
Le chemin relatif `../img/planete.jpeg` signifie que pour atteindre le fichier `planete.jpeg` depuis le dossier courant :

- il faut remonter un rang plus haut dans l'arborescence `../`
- Descendre dans le dossier `img/`
:::
- **Avec des tableaux.....sans bordures** <br>
<p style="text-align:justify;">
Pour insérer un tableau, on utilise la balise <code>&#60;table&#62;&#60;/table&#62;</code> puis 
on définit une ligne <code>&#60;tr&#62;&#60;/tr&#62;</code> puis on définit une case <code>&#60;td&#62;&#60;/td&#62;</code>. <br>
On peut également definir des cases d'en-têtes avec <code>&#60;th&#62;&#60;/th&#62;</code>.
</p>
<p style="text-align:justify;">
Pour donner plus de style (bordure, couleur, position,....)
à une page, il faut utiliser le langage de style `CSS`.
</p>


- **Avec des titres de niveaux 1 à 6** <br>
On utilise la balise <code>&#60;hn&#62;&#60;/hn&#62;</code>où `n` est compris entre `1` et `6`. Par défaut, le navigateur donne une taille de police supérieur aux titres de niveaux 1

- **Avec des vidéos** :<br>
    + Si la vidéo est hébergée sur notre machine, on utilisera le tag `<video></video>`<br>
**Ex:** <br>
        ```html
        <video width="320" height="240" controls>
        <source src="../img/movie.mp4" type="video/mp4">
        </video>
        ```

    + Si la vidéo est hébergée sur un serveur externe, on utilisera le tag `<iframe></iframe>` avec le chemin `embed/codeDeLaVideo`

        **Ex:** <br>
        ```html
        <iframe width="420" height="345" src="https://www.youtube.com/embed/tgbNymZ7vqY">
        </iframe>
        </video>
        ```




- **des pieds de pages, des menus, des boutons, des forulaires, etc....** <br>
Voici un exemple de page qui reprend l'ensemble des éléments HTML présentés dans cette leçon. <br>

**Remarque :** <br>
La première ligne contient le tag `<!DOCTYPE html>` ; il n'est pas rigoureusement obligatoire mais il indique au navigateur du client que le langage utilisé est moderne (HTML5). <br>

Le développeur peut ajouter des commentaires dans son fichier `html`en utilisant `<!-- -->`.

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My First HTML Page</title>
</head>
<body>
    <h1>Welcome to My Page!</h1>
    
    <h2>About Me</h2>
    <p>Hello! I'm learning HTML and this is my first webpage. I'm excited to learn about all the different HTML elements and how to use them to create interesting web content.</p>
    
    <p>This page demonstrates various HTML elements like lists, tables, links, and more. I hope this helps other beginners understand how HTML works!</p>

    <h2>Check Out My GitHub</h2>
    <a href="https://github.com" target="_blank">Visit My GitHub Profile</a>

    <h2>My Favorite Plates</h2>
    <ol>
        <li>Spaghetti Carbonara</li>
        <li>Grilled Salmon</li>
        <li>Chocolate Cake</li>
    </ol>

    <h2>Daily Meals</h2>
    <ul>
        <li>Breakfast</li>
        <li>Lunch</li>
        <li>Dinner</li>
    </ul>

    <h2>Class Roster</h2>
    <table>
        <tr>
            <th>Firstname</th>
            <th>Name</th>
            <th>Age</th>
        </tr>
        <tr>
            <td>John</td>
            <td>Smith</td>
            <td>25</td>
        </tr>
        <tr>
            <td>Sarah</td>
            <td>Johnson</td>
            <td>22</td>
        </tr>
    </table>

    <h2>My Favorite Music</h2>
    <iframe width="560" height="315" src="https://www.youtube.com//embed/K2snTkaD64U"  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

    <h2>Random Image</h2>
    <img src="https://picsum.photos/400/300" alt="Random placeholder image" width="400" height="300">

</body>
</html>
```