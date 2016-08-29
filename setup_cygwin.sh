#!/bin/bash

bash setup.sh

git config --global core.autocrlf true
git config --global core.filemode false

HOME="/home/$(whoami)"
BASH_RC="$HOME/.bashrc"

cp template/npp.sh $HOME
git config --global core.editor "~/npp.sh"

cp -v template/.bashrc_cygwin.sh "$HOME/.bashrc_cygwin"
if ! grep -Fq ".bashrc_cygwin" $BASH_RC; then
    echo "source ~/.bashrc_cygwin" >> $BASH_RC
fi
