# DotFiles Repo

- Note: To ensure that this repo dot files works properly clone this inside your home directory or use this command to clone this repo

```bash
git clone https://gitlab.com/bhumit070/dotfiles.git $HOME/dotfiles
```

## Zsh setup guide

- To setup zsh use following steps
  - open your terminal and enter following commands <br />
  ```bash
  cd $HOME/dotfiles/setup
  ```
  ```bash
  ./zsh-setup.sh
  ```
  - If you get any error like like permission denied while running `./zsh-setup.zsh` then run
  ```bash
  chmod +x ./zsh-setup.sh
  ```
  - then run `./zsh-setup.sh` again
  - And voila 🥳 you will have zsh setup
  - now other thing is to install necessary fonts to render icons in terminal
  - install [exa](https://github.com/ogham/exa) and [bat](https://github.com/sharkdp/bat) if you want to extend functionality of ls and cat command ( RECOMMENDED )
  - and then Download these four ttf files:
  - [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
  - [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
  - [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
  - [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)
  - Double-click on each file and click "Install". This will make `MesloLGS NF` font available to all
    applications on your system.
  - [PowerLevel10k](https://github.com/romkatv/powerlevel10k) theme is included with this setup

### Plugins Included

| Plugins                                                                         | Description                                               |
| :------------------------------------------------------------------------------ | :-------------------------------------------------------- |
| [ZSH-VI-MODE](https://github.com/jeffreytse/zsh-vi-mode) </span>                | Brings Vi Mode inside zsh shell                           |
| [ZSH-AUTO-SUGGESTIONS](https://github.com/zsh-users/zsh-autosuggestions)        | Gives Suggestions while typing command                    |
| [ZSH-SYNTAX-HIGHLIGHTING](https://github.com/zsh-users/zsh-syntax-highlighting) | Syntax Highlighting inside zsh shell                      |
| [NVM-LAZY-LOAD](https://github.com/lukechilds/zsh-nvm)                          | This plugin helps lazy load nvm so zsh can be open faster |

## Docker DB setup guide

- Note: [Docker](https://www.docker.com/) must be installed and running in your system to set this up
- This setup will include 3 databases ([mysql](https://www.mysql.com/), [mongodb](https://www.mongodb.com/) & [postgres](https://www.postgresql.org/)) and two database management software [phpmyadmin](https://www.phpmyadmin.net/) and [pgadmin](https://www.pgadmin.org/)
- To setup docker dbs run this commands
```bash
cd $HOME/dotfiles/setup/
```
```bash
./docker.sh
```
- If you get any error like like permission denied while running `./docker.sh` then run
```bash
chmod +x ./docker.sh
```

### How to run these tools
| Tool       | Command to Run | Runs on                                 | depends on | user                | password  |
| :--------- | :------------- | :-------------------------------------- | :--------- | :------------------ | :-------- |
| MySQL      | mysql          | localhost:3306                          | -          | root                | -         |
| Postgres   | postgres       | localhost:5432                          | -          | bhumit070           | bhumit070 |
| MongoDB    | pgadmin        | localhost:27017                         | -          | -                   | -         |
| PhpmyAdmin | phpmyadmin     | [localhost:8080](http://localhost:8080) | mysql      | root                | -         |
| Pgadmin    | pgadmin        | [localhost:8081](http://localhost:8081) | postgres   | bhumit070@gmail.com | bhumit070 |

- You can change default username and password from this file -> `$HOME/dotfiles/aliases/docker`

### some useful alias included in this setup
| Alias (command)                               | Use                                 | Original Command                                   |
| :-------------------------------------------- | :---------------------------------- | :------------------------------------------------- |
| dps                                           | It shows all docker containers      | docker ps --all                                    |
| ddc                                           | It removes all the docker container | docker rm -f $(docker ps -a -q)                    |
| ddi                                           | It removes all the docker image     | docker rmi -f $(docker images -a -q)               |
| dstart [CONTAINER NAME]                       | It starts the stopped container     | docker container start $1                          |
| dockerKillAndRemoveContainer [CONTAINER NAME] | It stops and kills the container    | docker container stop $1 && docker container rm $1 |