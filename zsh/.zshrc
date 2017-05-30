export DOTFILES=$HOME/Dotfiles
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="random"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"
ZSH_CUSTOM=$DOTFILES/zsh

plugins=(git git-extras httpie github npm vagrant django common-aliases)

source $ZSH/oh-my-zsh.sh
source ~/.nvm/nvm.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='vim'

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
