#!/bin/bash

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
clone https://github.com/zdharma-continuum/fast-syntax-highlighting $pluginsDir/fast-syntax-highlighting

# THEME INSTALL
clone https://github.com/romkatv/powerlevel10k.git $themeDir/powerlevel10k

homeZshrc="$HOME/dotfiles/zsh/dotfiles/.zshrc-home"
if [ -f $homeZshrc ]; then
	cp $homeZshrc $HOME/.zshrc
fi

osName=$(uname)

if [ $osName == 'Darwin' ]; then
	brew=$(which brew)
	if [ ! -z $brew ]; then
		brew bundle --file ~/dotfiles/brew/Brewfile
		exit 0
	fi
fi

if [ $osName == 'Linux' ]; then
	apt=$(which apt)
	if [ ! -z $apt ]; then
		sudo apt install exa bat
		exit 0
	fi
	pacman=$(which pacman)
	if [ ! -z $pacman ]; then
		sudo pacman -S bat exa
		exit 0
	fi
fi

./docker.sh
./crontab.sh
