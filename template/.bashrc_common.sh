export HISTCONTROL=ignoredups

if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# classify files in color
alias ls='ls -hF --color=auto'

# long list
alias ll='ls -l'

# grep, in color
alias grep='grep --color=auto'

# grep, with line numbers, in color
alias fgrep='fgrep -n --color=auto'
alias egrep='egrep -n --color=auto'

xgrep() {
	grep -nr --color=auto --exclude-dir=.git "$@"
}

alias brc='source ~/.bashrc'
alias pullrb="git pull --rebase"
alias update="git stash; git pull --rebase; git stash pop"

export GIT_PS1_SHOWDIRTYSTATE=1
# Show only last 5 levels of directories on the prompt
export PROMPT_DIRTRIM=5
export PS1='\[\e[01;32m\]\u@\h \t\[\e[01;36m\] \w\[\e[01;33m\]$(__git_ps1)\[\e[01;36m\] \$\[\e[00m\] '

source ~/git-completion.bash
source ~/git-prompt.sh
