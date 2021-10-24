if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your oh-my-zsh installation.
export ZSH="/home/bhumit070/.config/oh-my-zsh"

ZSH_THEME="robbyrussell"

# CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

plugins=(
	git
	zsh-autosuggestions
	zsh-vi-mode
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

EDITOR=vim
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# CUSTOM PATHS
export PATH=$PATH:/usr/local/go/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completionv

source ~/powerlevel10k/powerlevel10k.zsh-theme


# CUSTOM ALIAS
alias zrc="source ~/.zshrc"
alias sl=ls

alias vsc='code . ; exit'

alias pof='systemctl poweroff -i'
alias rbt='systemctl reboot -i'

alias ni='npm i'
alias nd='npm i -D'
alias ng='npm i -G'

alias ya='yarn add'
alias yd='yarn add -D'
alias yg='yarn global add'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Docker

# remove all containers
alias ddc='docker rm -vf $(docker ps -a -q)'

# remove all images
alias ddi='docker rmi -f $(docker images -a -q)'

# ps all
alias dps='docker ps --all'

# Function
dockerKillAndRemoveContainer() { docker container stop $1 && docker container rm $1 }

# Docker Mongo DB 
mongoImageName="mongo"
mongoContainerName="mongodb"
mongoVolumeInfo="mongo:/data/db"
mongoDbConfigVolumeInfo="mongo:/data/configdb"
mongoCommand="mongo"
mongoPorts="27017:27017"

alias mongo="docker container run -d --name $mongoContainerName -p $mongoPorts -v $mongoVolumeInfo -v $mongoDbConfigVolumeInfo $mongoImageName"
alias mongos="docker container exec -it $mongoContainerName $mongoCommand"
alias mongostop="dockerKillAndRemoveContainer $mongoContainerName"

dbPassword="bhumit070"

# Docker MySQL
mysqlImageName="mysql"
mysqlContainerName="mysql"
mysqlVolumeInfo="mysql:/var/lib/mysql"
mysqlCommand="mysql"
mysqlPorts="3306:3306"

alias mysql="docker run -d --name $mysqlContainerName -e MYSQL_ALLOW_EMPTY_PASSWORD=true -p $mysqlPorts -v $mysqlVolumeInfo $mysqlImageName"
alias mysqls="docker exec -it ${mysqlContainerName} mysql"	
alias mysqlstop="dockerKillAndRemoveContainer $mysqlContainerName"

# Docker Postgres
postgresImageName="postgres"
postgresContainerName="postgres"
postgresVolumeInfo="postgres:/var/lib/postgresql/data"
postgresCommand="mongo"
postgresPorts="5432:5432"
postgresUser="bhumit070"
postgresPassword="$dbPassword"

alias postgres="docker run -d --name $postgresContainerName -e POSTGRES_USER=$postgresUser -e POSTGRES_PASSWORD=$postgresPassword -p $postgresPorts -v $postgresVolumeInfo $postgresImageName"
alias postgress="docker container exec -it $postgresContainerName psql -U postgresUser"
alias postgresstop="dockerKillAndRemoveContainer $postgresContainerName"

# function
vs() { code $1 && exit }
