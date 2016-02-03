#!/bin/bash

# Print in red
echor () { tput setaf 1; echo "$@"; tput sgr0; }
# Print in green
echog () { tput setaf 2; echo "$@"; tput sgr0; }

HOME="/home/thach"
BASH_RC="$HOME/.bashrc"

# ssh-keygen -t rsa

git config --global user.name "Thach Hoang"
git config --global user.email thachhoang@users.noreply.github.com
git config --global color.ui true
git config --global core.autocrlf true
git config --global core.filemode false
git config --global push.default simple
git config --global alias.b branch
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.cm "commit -m"
git config --global alias.cam "commit -am"
git config --global alias.amend "commit --amend"
git config --global alias.lg "log --decorate --oneline --stat --graph"
git config --global alias.lg2 "log --decorate --graph --date=relative --all"
git config --global alias.f "fetch -p"

wget -NP $HOME https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
wget -NP $HOME https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

if ! grep -Fq ".bashrc_common" $BASH_RC; then
    cp template/.bashrc_common .
    echo "source ~/.bashrc_common" >> $BASH_RC
fi

source $BASH_RC
