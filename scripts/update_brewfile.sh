#! /bin/bash

# This script updates the Homebrew formula for the current version of the

FILE=$HOME/dotfiles/brew/Brewfile
brew bundle dump --file=$FILE -f

if ! git diff --quiet HEAD -- "$FILE"; then
	cd "$HOME/dotfiles/" || exit

	git add brew/Brewfile
	git commit -m " update: brewfile"

	branch=$(git branch --show-current)
	git push origin $branch
fi
