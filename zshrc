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

eval `dircolors ~/.dir_colors`

bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line
bindkey "^[[3~" delete-char

autoload -U colors && colors

export BROWSER="firefox"
export EDITOR="vim"
export TERM=xterm-256color

alias ls="ls --color -F"
alias yum="sudo yum"
alias make="sudo make"

function cls(){
    clear && ls
}

function cs(){
	cd "$@" && ls
}

function nginx(){
	sudo service nginx restart
}

## Case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

## Setting the prompt
PROMPT='%F{cyan}[%n] %F{red}~%f '
RPROMPT='[%2c]'
