#!/bin/sh

echo "Setting up your Mac..."

xcode-select --install

if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

brew tap homebrew/bundle
brew bundle

chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash

nvm install stable
npm install --global yarn
npm install --global grunt-cli

apm install atom-beautify color-picker file-icons git-plus minimap
apm install linter-csslint linter-eslint linter-js-yaml

git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
sh ~/.vim_runtime/install_basic_vimrc.sho
git clone https://github.com/square/maximum-awesome.git
cd maximum-awesome
rake

source macos

source ../zsh/.zshrc
