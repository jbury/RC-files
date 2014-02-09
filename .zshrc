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



export BROWSER="firefox"
export EDITOR="vim"

alias ls="ls --color -F"

function cs(){
	cd "$@" && ls
}

## Case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

## Setting the prompt
PROMPT='[%n] '
RPROMPT='[%2c]'
