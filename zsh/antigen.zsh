source $(brew --prefix)/share/antigen.zsh

antigen bundle python
antigen bundle pip
antigen bundle brew
antigen bundle brew-cask
antigen bundle osx

antigen apply
