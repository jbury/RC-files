mesg n

alias cls='clear; ls'
alias gcc='gcc -std=gnu99'

cs() {
	cd "$@" && ls
}

lab(){
	ssh ne102618l
}

export PS1="\[\033[1;33m\] \h\[\033[1;34m\] [\w] \[\033[1;31m\]$\[\033[0m\] "

if [ `hostname` = "green.eng.utoledo.edu" ]; then
	echo "On $HOSTNAME, sshing to lab computer"
	lab
elif [ `hostname` = "blue.eng.utoledo.edu" ]; then
	echo "On $HOSTNAME, sshing to lab computer"
	lab
elif [ `hostname` = "gold.eng.utoledo.edu" ]; then
	echo "On $HOSTNAME, sshing to lab computer"
	lab
else
	eval `/usr/bin/dircolors -b ~/.dircolors`
	alias ls='ls --color'
	echo "On $HOSTNAME"
fi
