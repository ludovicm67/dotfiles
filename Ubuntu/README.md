# Configuration pour Ubuntu

Retrouvez ici tous mes fichiers de configuration linux. J'utilise la distribution Ubuntu dans sa dernière version, mais nombreux points ici fontionnent sans soucis sur d'autres distributions.


## Installation des ressources de base

En général, une fois que j'arrive sur un Ubuntu tout frais, j'aime bien lancer une petite commande du style : `sudo apt install git curl unity-tweak-tool pavucontrol zsh`

 - `git` : pour récupérer des dépôts, pour le versionning, etc...
 - `curl` : pour faire certaines requêtes
 - `unity-tweak-tool` : pour configurer l'apparence d'Unity plus simplement
 - `pavucontrol` : si vous utilisez des périphériques audio pas très bien reconnus par Ubuntu (casques USB, sortie audio en HDMI, ...), cela vous sauvera la vie pour la partie configuration de tous les périphériques audio (désactiver la sortie jack, etc...).
 - `zsh` : alternative de shell pour remplacer bash qui est par défaut


## Apparence

J'utilise le thème et les icônes de base d'Ubuntu, du fait qu'ils sont
plutôt dans l'air du temps.


## Terminal

### Installation des polices Powerline

Le thème que j'utilise pour mon shell a besoin d'une font powerline.

Pour les installer, il suffit de lancer la commande suivante :

```sh
sudo apt-get install fonts-powerline
```

Plus d'informations sur https://github.com/powerline/fonts#quick-installation .

### Shell par défaut : zsh !

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

Ensuite, pour éviter des soucis de couleurs (notamment dans vim), j'éxécute les commandes suivantes :

```
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
base16_ocean
```


### Vim (neovim)

Neovim est un éditeur de texte très puissant qui s'tilise directement depuis
votre terminal. Pour l'installer sur Ubuntu, il faut lancer la commande
suivante :

```sh
sudo apt-get install neovim
```

J'utilise un gestionnaire de paquets, *vim-plug*, installable avec la commande suivante : `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

Il suffit de placer mon fichier `.vimrc` dans votre répertoire utilisateur, de lancer `:PlugInstall` depuis vim pour installer les plugins, et le tour est joué !

Voili voilou; ce sera déjà pas mal :wink:

