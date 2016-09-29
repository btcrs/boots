#!/usr/bin/env bash

# include my library helpers for colorized echo and require_brew, etc
source ../hops


# Ask for the administrator password upfront
bot "I need you to enter your sudo password so I can install some things:"
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

################################################################################
# install homebrew                                                             #
################################################################################

running "checking homebrew install"
brew_bin=$(which brew) 2>&1 > /dev/null
if [[ $? != 0 ]]; then
  action "installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    if [[ $? != 0 ]]; then
      error "unable to install homebrew, script $0 abort!"
      exit -1
  fi
fi
ok

running "checking brew-cask install"
output=$(brew tap | grep cask)
if [[ $? != 0 ]]; then
  action "installing brew-cask"
  require_brew caskroom/cask/brew-cask
fi
ok

###############################################################################
#Install command-line tools using Homebrew                                    #
###############################################################################


running "updating homebrew"
brew update
ok

bot "before installing brew packages, we can upgrade any outdated packages."
read -r -p "run brew upgrade? [y|N] " response
if [[ $response =~ ^(y|yes|Y) ]];then
    # Upgrade any already-installed formulae
    action "upgrade brew packages..."
    brew upgrade
    ok "brews updated..."
else
    ok "skipped brew package upgrades.";
fi

bot "installing homebrew command-line tools"

require_brew coreutils
require_brew moreutils
require_brew findutils
require_brew dos2unix

require_brew git
require_brew git-flow
require_brew tig
require_brew hub

require_brew ack
require_brew gawk
require_brew gnupg
require_brew gnu-sed --default-names
require_brew homebrew/dupes/grep

require_brew nmap
require_brew node

require_brew tree
require_brew ttyrec
require_brew vim --override-system-vi
require_brew wget --enable-iri
require_brew zsh
require_brew tmux 
require_brew wemux 

require_brew pyenv
require_brew autoenv 

bot "if you would like to start memcached at login, run this:"
echo "ln -sfv /usr/local/opt/memcached/*.plist ~/Library/LaunchAgents"
bot "if you would like to start memcached now, run this:"
echo "launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"

###############################################################################
# Native Apps (via brew cask)                                                 #
###############################################################################

bot "installing your apps"
brew tap caskroom/versions > /dev/null 2>&1

# utilities
require_cask flux
require_cask skitch 
require_cask the-unarchiver
require_cask rescuetime
require_cask 1password 
require_cask bettertouchtool
require_cask alfred 
require_cask transmission
require_cask karabiner
require_cask seil

# dev tools
require_cask iterm2
require_cask gpgtools

#fun
require_cask calibre 
require_cask vlc

# browsers
require_cask google-chrome

bot "Cleaning up"
brew cleanup > /dev/null 2>&1
bot "All clean"
