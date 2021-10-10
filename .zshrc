
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your oh-my-zsh installation.
export ZSH="/home/bhumit070/.config/oh-my-zsh"

ZSH_THEME="robbyrussell"

# CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

plugins=(
	git
	zsh-autosuggestions
	zsh-vi-mode
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# CUSTOM PATHS
export PATH=$PATH:/usr/local/go/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completionv

# CUSTOM ALIAS
alias sl=ls

alias vsc='code . ; exit'

alias pof=poweroff
alias rbt=reboot

alias ni='npm i'
alias nd='npm i -D'
alias ng='npm i -G'

alias ya='yarn add'
alias yd='yarn add -D'
alias yg='yarn global add'
