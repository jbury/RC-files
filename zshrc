# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
#
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jruby/.zshrc'

zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Should make alt+tab not cause putty windows to suspend processes
stty ixany
stty ixoff -ixon


eval `dircolors ~/.dir_colors`

bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line
bindkey "^[[3~" delete-char

autoload -U colors && colors

export EDITOR="vim"
export TERM=xterm-256color

#dumb aliases
alias l="ls"
alias sl="ls"

#flag aliases
alias ls="ls --color -F"
alias make="sudo make"
alias apt="sudo apt"
alias df="df -BG"
alias grep="grep --color=always"

#shorthand aliases
alias gits="git status"
alias gita="git commit --amend"
alias gc="git commit"
alias ga="git add ."
alias gs="git status"
alias gpr="git pull --rebase"
alias c="cd ..;"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias sshconf="vim ~/.ssh/config"

alias kc="kubectl"

function cls(){
    clear && ls
    }

function nginx-restart(){
	sudo service nginx restart
}

function undo-commit(){
  git reset --soft HEAD~1
}

## Case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


## Setting the prompt

PROMPT='%F{green}[Laptop] %F{cyan}[%n] %F{red}~%f '
RPROMPT='[%2c]'

cls
