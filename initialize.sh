#!/bin/sh

echo "== Start initialize =="

## Install Homebrew
echo "== Install homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "== Installed homebrew"
which brew
brew update

## Install mac applications
## http://www.caskroom.io/?from=@
brew cask install google-chrome
brew cask install sequel-pro
brew cask install caffeine
brew cask install duet
brew cask install iterm2
brew cask install pycharm
brew cask install sourcetree


## http://searchbrew.com/
## Install develop env
brew install node
brew install pyenv

## Install Ultimate vimrc (https://github.com/amix/vimrc)
echo "== Install Ultimate vimrc =="
brew install vim
git clone https://github.com/SELO77/selo_vim_config.git ~/.vim_runtime

sh ~/.vim_runtime/install_awesome_vimrc.sh
sh ~/.vim_runtime/install_basic_vimrc.sh


## Install bash-it
git clone --depth=1 https://github.com/SELO77/bash-it.git ~/.bash_it

~/.bash_it/install.sh
## bash-it theme sexy
