pluginsDir=$HOME/dotfiles/zsh/plugins
themeDir=$HOME/dotfiles/zsh/theme

for file in $(ls $pluginsDir); do
	if [ -d "$pluginsDir/$file" ]; then
		rm -rf "$pluginsDir/$file"
	fi
done

for file in $(ls $themeDir); do
	if [ -d "$themeDir/$file" ]; then
		rm -rf "$themeDir/$file"
	fi
done

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
