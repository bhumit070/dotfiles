# POWERLEVEL 10K THEME
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


plugins=(
    git
    zsh-autosuggestions
    zsh-vi-mode
    zsh-syntax-highlighting
)

#VARIABLES
EDITOR=vim
BROWSER=brave

export ZSH="/home/bhumit070/.oh-my-zsh"
# CUSTOM PATHS
export PATH=$PATH:/usr/local/go/bin # GOLANG
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/powerlevel10k/powerlevel10k.zsh-theme
source $ZSH/oh-my-zsh.sh

# CUSTOM ALIAS
source $HOME/dotfiles/aliases/custom

# Docker
source $HOME/dotfiles/aliases/docker

# Functions
source $HOME/dotfiles/aliases/functions
