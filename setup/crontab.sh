#!/bin/bash

echo "0 * * * * $HOME/dotfiles/scripts/update_brewfile.sh" >>mycron

crontab -l >mycron

crontab mycron

rm mycron
