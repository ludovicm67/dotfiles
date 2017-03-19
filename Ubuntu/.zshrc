export ZSH=/home/ludovic/.oh-my-zsh
ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"
plugins=(sudo git)
source $ZSH/oh-my-zsh.sh
DEFAULT_USER="ludovic"
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

