#!/bin/bash

alias eamcs='emacs'
alias emasc='emacs'
alias emcas='emacs'
alias meacs='emacs'

alias gerp='grep'
alias egerp='egrep'

if [ `basename $SHELL` = 'bash' ]
then
    shopt -s cdspell #bash will try and fix directory-name typos
fi
