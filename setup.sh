#!/usr/bin/env bash

sudo apt-get -y install software-properties-common
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get -y install neovim
sudo apt-get -y install python-dev python-pip python3-dev python3-pip
sudo apt-get -y install xclip xsel git

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
source $HOME/.nvm/nvm.sh
source $HOME/.profile
source $HOME/.bashrc
nvm install stable
npm install js-beautify eslint_d eslint-plugin-react htmlhint jsonlint csslint -g

sudo pip3 install --upgrade pip
sudo pip3 install neovim
git clone https://github.com/halsn/neovim-config && cd neovim-config
cp -a ./lintrc/. $HOME
cp -r . $HOME/.config/nvim
cp -r ./fonts/. $HOME/.fonts
fc-cache -fv
