# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


export WORKON_HOME=$HOME/.virtualenvs  
source /usr/bin/virtualenvwrapper.sh

export PATH=$PATH:~/bin 

source ~/.git-prompt.sh

export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export HISTTIMEFORMAT="%d.%m.%y %T "

HISTSIZE=5000
HISTFILESIZE=10000


alias yi='sudo yum install'
alias ys='yum search'

alias di='sudo dnf install'
alias ds='dnf search'

alias ..='cd ..'
alias h='history'
alias mkdir='mkdir -p'

alias ls='ls -h --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias svim='sudo vim'
alias cd..='cd ..'
alias ...='cd ../..'
alias back='cd $OLDPWD'
alias root='sudo su'



function extract()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}
