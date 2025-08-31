#! /bin/bash

# This script updates the Homebrew formula for the current version of the

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin

FILE=$HOME/dotfiles/brew/Brewfile
brew bundle dump --file=$FILE -f

cd "$HOME/dotfiles/" || exit

if ! git diff --quiet HEAD -- "$FILE"; then

	git add brew/Brewfile
	git commit -m " update: brewfile"

	branch=$(git branch --show-current)
	git push origin $branch
fi

cd - || exit
