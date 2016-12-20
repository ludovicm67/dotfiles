# Dotfiles

Retrouvez ici tous mes fichiers de configuration linux. J'utilise la distribution Ubuntu dans sa dernière version, mais nombreux points ici fontionnent sans soucis sur d'autres distributions.


## Installation des ressources de base

En général, une fois que j'arrive sur un Ubuntu tout frais, j'aime bien lancer une petite commande du style : `sudo apt install git vim curl unity-tweak-tool pavucontrol zsh`

 - `git` : pour récupérer des dépôts, pour le versionning, etc...
 - `vim` : un éditeur de texte directement depuis le terminal
 - `curl` : pour faire certaines requêtes
 - `unity-tweak-tool` : pour configurer l'apparence d'Unity plus simplement
 - `pavucontrol` : si vous utilisez des périphériques audio pas très bien reconnus par Ubuntu (casques USB, sortie audio en HDMI, ...), cela vous sauvera la vie pour la partie configuration de tous les périphériques audio (désactiver la sortie jack, etc...).
 - `zsh` : alternative de shell pour remplacer bash qui est par défaut


## Apparence

Attaquons-nous désormais à la partie concernant l'apparence (thèmes, icônes, ...) !

### Numix

Pour installer le thème et les icônes Numix, il vous suffira de lancer les commandes suivantes :

```
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle
```

### Arc-theme

De même pour arc-theme :

```
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install arc-theme
```

### Choisir le thème et les icônes

Pour changer les icônes et le thème, lancez `unity-tweak-tool`, puis dans la rubrique `Apparence` cliquez sur `Thème`. Pour ma part j'utilise `Arc-darker`.

Allez ensuite dans la partie concernant les icônes. Pour ma part j'utilise `Numix-circle`, du fait qu'elles soient très complètes, et très jolies.


## Terminal

### Police par défaut : vive le Powerline !

Pour afficher certains caractères spéciaux, il va falloir utiliser une font spéciale.  
Rendez-vous ici : https://github.com/ludovicm67/fonts pour installer une font en particulier; personnellement j'utilise `Source Code Pro for Powerline Light`.

Une fois la police installée, ouvrez un terminal (`CTRL + ALT + T`), puis dans `Terminal > Préférences > Profils > Modifier` , il sera possible de changer la police par défaut; choisissez donc celle que vous avez choisie précédemment.

### Shell par défaut : zsh !

Si zsh n'est pas le shell par défaut, il vous suffira de lancer la commande : `chsh -s $(which zsh)` pour le faire.

### Installation de OhMyZsh

Elle se fait en une petite commande : `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`.
OhMyZsh va vous permettre de configurer très simplement votre shell (thèmes, plugins, ...); et ça c'est classe !

### Apparence

Pour installer le thème `base16 ocean`, il suffit de lancer les commandes suivantes :

```
git clone https://github.com/ludovicm67/base16-gnome-terminal.git ~/.config/base16-gnome-terminal
source .config/base16-gnome-terminal/base16-ocean.dark.sh
```

Il ne vous restera plus qu'à lancer un nouveau terminal (`CTRL + ALT + T`) pour voir le résultat !


## Ce qui reste à installer

 - Google Chrome (car la console développeur `F12` est quand-même bien plus classe que sur Firefox)
 - Sublime Text (un éditeur de texte qui permet d'être relativement efficace; au passage faire un tour ici : https://github.com/ludovicm67/ST3Prefs pour la conf)
 - Discord, c'est bien de parler avec plein de gens !
 - Skype, pratique pour les appels vidéos
 - FileZilla, quand on travaille encore avec ftp..
 - Steam, car jouer c'est bien !
 - Environnement de développement : nodejs + php + mysql + apache / nginx + ...

Voili voilou; ce sera déjà pas mal :wink:
