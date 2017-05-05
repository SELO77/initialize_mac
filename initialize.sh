#!/bin/sh
echo "== Start initialize =="


## Install Homebrew
echo "== Install homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "== Installed homebrew"
## http://searchbrew.com/
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


## Copy git config files to Home
cp git_setting/.gitignore ~/
cp git_setting/.gitconfig ~/

## Install Node
brew install node

## Install MySQL
brew install mysql

# Install Python
brew install pyenv
brew install pyenv-virtualenv
brew install autoenv

## Pyenv setting
echo '\n\n## Set Pyenv run environment'
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile

## Autoenv setting
echo 'source /usr/local/opt/autoenv/activate.sh' >> ~/.bash_profile


# Overide bash_it theme extended by Sexy theme
echo 'export BASH_IT_THEME="~/initialize_mac/bash_setting/sexy.theme.bash"' >> ~/.bash_profile


# echo 'echo Hi \033[1;31m\]"$(whoami)"\033[0m\], Enjoy' >> ~/.bash_profile
