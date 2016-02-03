export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# classify files in colour
alias ls='ls -hF --color=tty'

# long list
alias ll='ls -l'

alias pullrb="git pull --rebase"
alias update="git stash; git pull --rebase; git stash pop"

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\e[01;32m\]\u@\h \t\[\e[01;34m\] \w\[\e[01;33m\]$(__git_ps1)\[\e[01;34m\] \$\[\e[00m\] '

source ~/git-completion.bash
source ~/git-prompt.sh
