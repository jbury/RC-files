# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
#
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jruby/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors && colors

export BROWSER="firefox"
export EDITOR="vim"

alias ls="ls --color -F"

function school(){
	ssh jbury@eng.utoledo.edu
}

function cs(){
	cd "$@" && ls
}

function drive(){
	currentPath=`pwd`
	cd ~/Documents/UT-Drive/node_modules/droppy/
	clear
	node droppy
	cd $currentPath
}

## Case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

## Setting the prompt
PROMPT='%F{cyan}[%n] %F{red}~%f '
RPROMPT='[%2c]'

