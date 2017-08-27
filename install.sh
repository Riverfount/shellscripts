#!/bin/bash

# Instalação de apps básicas

# update & clean up
sudo apt install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository ppa:a-v-shkop/chromium
sudo add-apt-repository ppa:tmate.io/archive
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y


# install packages
sudo apt install -y ack-grep
sudo apt install -y autojump
sudo apt install -y autojump-zsh
sudo apt install -y build-essential
sudo apt install -y cmake
sudo apt install -y chromium-browser
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y git-cola
sudo apt install -y heroku-toolbelt
sudo apt install -y libbz2-dev
sudo apt install -y libncurses5-dev
sudo apt install -y libncursesw5-dev
sudo apt install -y libpq-dev
sudo apt install -y libreadline-dev
sudo apt install -y libsqlite3-dev
sudo apt install -y libssl-dev
sudo apt install -y llvm
sudo apt install -y make
sudo apt install -y namebench
sudo apt install -y neovim
sudo apt install -y pandoc
sudo apt install -y postgresql
sudo apt install -y postgresql-contrib 
sudo apt install -y silversearcher-ag
sudo apt install -y shellcheck
sudo apt install -y tmate
sudo apt install -y tmux
sudo apt install -y transmission
sudo apt install -y wget
sudo apt install -y xclip
sudo apt isntall -y zeal
sudo apt install -y zlib1g-dev
sudo apt install -y zsh


# Instação do ZSH e do OH-MY-ZSH
apt install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Instalação Pyenv, Virtualenv e Virtualenvwrapper
apt install -y llvm libncurses5-dev libncursesw5-dev
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
git clone https://github.com/yyuu/pyenv-virtualenvwrapper.git ~/.pyenv/plugins/pyenv-virtualenvwrapper

# install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install -y yarn

# install keybase
curl -O https://prerelease.keybase.io/keybase_amd64.deb
# if you see an error about missing `libappindicator1`
# from the next command, you can ignore it, as the
# subsequent command corrects it
sudo dpkg -i keybase_amd64.deb
sudo apt-get install -f
run_keybase

# clean up
sudo apt autoremove
sudo apt autoclean
