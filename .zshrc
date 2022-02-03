#POWERLEVEL 10K THEME CACHE CHECK
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# CONFIGS
source $HOME/dotfiles/zsh/configs/autoload    #AUTOLOAD
source $HOME/dotfiles/zsh/configs/variables   #VARIABLES

# POWERLEVEL THEME
source $ZSH_THEME_DIR/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f $ZSH_THEME_DIR/.p10k.zsh ]] || source $ZSH_THEME_DIR/.p10k.zsh

#PLUGINS 
source $ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh # zsh-autosuggestion
source $ZSH_PLUGINS_DIR/zsh-vi-mode/zsh-vi-mode.plugin.zsh # zsh-vi-mode
source $ZSH_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # zsh-syntax-highlighting
export NVM_LAZY_LOAD=true
source $ZSH_PLUGINS_DIR/zsh-nvm/zsh-nvm.plugin.zsh # nvm lazy load

# CUSTOM PATHS
export PATH=$PATH:/usr/local/go/bin # GOLANG

# ALIASES
source $HOME/dotfiles/aliases/custom #Custom
source $HOME/dotfiles/aliases/docker #Docker
source $HOME/dotfiles/aliases/functions #Custom