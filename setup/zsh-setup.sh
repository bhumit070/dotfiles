pluginsDir=$HOME/dotfiles/zsh/plugins
themeDir=$HOME/dotfiles/zsh/theme
rm -rf $pluginsDir/*``
rm -rf $themeDir/*

clone() {
	git clone --depth=1 $1 $2
}

# PLUNGINS INSTALL
clone https://github.com/zsh-users/zsh-autosuggestions $pluginsDir/zsh-autosuggestions
clone https://github.com/jeffreytse/zsh-vi-mode.git $pluginsDir/zsh-vi-mode
clone https://github.com/zsh-users/zsh-syntax-highlighting.git $pluginsDir/zsh-syntax-highlighting
clone https://github.com/lukechilds/zsh-nvm.git $pluginsDir/zsh-nvm

# THEME INSTALL
clone https://github.com/romkatv/powerlevel10k.git $themeDir/powerlevel10k