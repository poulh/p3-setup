#!/bin/bash
#above line makes file run with bash syntax even if loaded from zsh

SYMBIONT_TOOLS=~/.symbiont_tools/configs

source $SYMBIONT_TOOLS/typos.sh
source $SYMBIONT_TOOLS/color_commands.sh
source $SYMBIONT_TOOLS/symbiont_paths.sh
source $SYMBIONT_TOOLS/sailfish.sh
source $SYMBIONT_TOOLS/pyactivate.sh ~/pythenvs

function touch_emacs { touch -a "$1" && open -a Emacs "$1"; }
alias emacs=touch_emacs
EDITOR='emacs'
alias symdev='symdev_setup'


