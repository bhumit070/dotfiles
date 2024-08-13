#!/bin/bash

echo "0 * * * * $HOME/dotfiles/scripts/update_brewfile.sh >/dev/null 2>&1" >>mycron

crontab -l >mycron

crontab mycron

rm mycron
