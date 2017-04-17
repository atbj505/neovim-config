#!/usr/bin/env bash

sudo apt-get -y install software-properties-common
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get -y install neovim
sudo apt-get -y install python-dev python-pip python3-dev python3-pip
sudo apt-get -y install xclip xsel git

sudo pip3 install --upgrade pip
sudo pip3 install neovim
cd $HOME
git clone git@github.com:halsn/neovim-config && cd neovim-config
cp -a ./dotfiles/. $HOME
cp -r . $HOME/.config/nvim
cp -r ./fonts/. $HOME/.fonts

fc-cache -fv
