#POWERLEVEL 10K THEME CACHE CHECK
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# POWERLEVEL THEME
ZSH_THEME_DIR=$HOME/dotfiles/zsh/theme
source $ZSH_THEME_DIR/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f $ZSH_THEME_DIR/.p10k.zsh ]] || source $ZSH_THEME_DIR/.p10k.zsh

#PLUGINS 
ZSH_PLUGINS_DIR=$HOME/dotfiles/zsh/plugins
source $ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh # zsh-autosuggestion
source $ZSH_PLUGINS_DIR/zsh-vi-mode/zsh-vi-mode.plugin.zsh # zsh-vi-mode
source $ZSH_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # zsh-syntax-highlighting

#VARIABLES
EDITOR=vim
BROWSER=brave

# CUSTOM PATHS
export PATH=$PATH:/usr/local/go/bin # GOLANG
#export NVM_DIR="$HOME/.nvm" # NVM DIR
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# ALIASES
source $HOME/dotfiles/aliases/custom #Custom
source $HOME/dotfiles/aliases/docker #Docker
source $HOME/dotfiles/aliases/functions #Custom
