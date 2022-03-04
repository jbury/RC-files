# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
#
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jruby/.zshrc'

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.rbenv/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/local/bin"

zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

autoload -Uz compinit
compinit
#End of lines added by compinstall

# #Should make alt+tab not cause putty windows to suspend processes
stty ixany
stty ixoff -ixon

setopt nobeep autocd

bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[3~" delete-char

autoload -U colors && colors
eval `dircolors /home/jbury/.dir_colors`

export EDITOR="vim"
export TERM=xterm-256color

##dumb aliases
alias bb="mvn compile"
alias bbc="mvn clean"
alias grap="grep"
alias sl="ls"
alias l="ls"

##flag aliases
alias ls="ls --color -F"
alias apt="sudo apt"
alias update-alternatives="sudo update-alternatives"
alias df="df -BG"
alias grep="grep --color=always"

##shorthand aliases
alias python="python3"
alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gits="git status"
alias gita="git commit --amend"
alias gpr="git pull --rebase"
alias c="cd ..;"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias sshconf="vim ~/.ssh/config"
alias kc="kubectl"
alias kccc="kubectl config current-context"

function cls(){
   clear && ls
}

function undo-commit(){
  git reset --soft HEAD~1
}

## Case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


## Setting the prompt
PROMPT='%F{green}[Desktop] %F{cyan}[%n] %F{red}~%f '
RPROMPT='[%2c]'

eval "$(rbenv init -)"

cls
