# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f /opt/eldk41/eldk_init ];then
       . /opt/eldk41/eldk_init
fi

# User specific aliases and functions
if [ -f ~/.alias ];then
	. ~/.alias
fi

source ~/.git-prompt.sh 
source ~/.git-completion.bash 
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="verbose git svn"

PS1='\[\033[1;31m\]\u@\h \[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1 " (%s)")\[\033[1;35m\] -> \[\033[0m\]'
