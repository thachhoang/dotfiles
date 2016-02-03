#!/bin/bash

bash setup.sh

HOME="/home/thach"
BASH_RC="$HOME/.bashrc"

cp template/npp.sh .
git config --global core.editor "~/npp.sh"

if ! grep -Fq ".bashrc_cygwin" $BASH_RC; then
    cp template/.bashrc_cygwin.sh .bashrc_cygwin
    echo "source ~/.bashrc_cygwin" >> $BASH_RC
fi

source $BASH_RC
