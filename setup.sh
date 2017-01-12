#!/usr/bin/env bash

sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt-get install xclip xsel git

#判断是否安装Node
if [ -z "$(which npm)" ]; then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
  source ~/.bashrc
  nvm use --lts
fi

npm install js-beautify eslint_d htmlhint jsonlint csslint -g
sudo pip3 install --upgrade pip
sudo pip3 install neovim
git clone https://github.com/halsn/neovim-config && cd neovim-config
cp -a ./lintrc/. ~
cp -r . ~/.config/nvim
nvim +PlugInstall +qa
