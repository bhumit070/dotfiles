#! /bin/bash

# This script updates the Homebrew formula for the current version of the

FILE=$HOME/dotfiles/brew/Brewfile
brew bundle dump --file=$FILE -f

cd "$HOME/dotfiles/" || exit
echo "CAME TO HERE"
if ! git diff --quiet HEAD -- "$FILE"; then

	git add brew/Brewfile
	git commit -m " update: brewfile"

	branch=$(git branch --show-current)
	git push origin $branch
fi

cd - || exit
