export ZSH="/home/ludovic/.oh-my-zsh"

DEFAULT_USER="ludovic"
ZSH_THEME="agnoster" # https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
plugins=(git sudo zsh-autosuggestions kubectl)
source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='vim'
export LANG=fr_FR.UTF-8

# Update PATH
PATH="$(composer config -g home)/vendor/bin:$PATH"

