# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/.histfile
HISTSIZE=5000
SAVEHIST=2500
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/elve/.zshrc'

autoload -Uz compinit
compinit


source $ZDOTDIR/alias.zsh
source $ZDOTDIR/theme.zsh

neofetch
