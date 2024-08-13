#!/bin/bash

set -euo pipefail
set -x

if [ -z ${XDG_CONFIG_HOME+x} ]; then
    export XDG_CONFIG_HOME=${HOME}/.config
fi

if [ ! -d ${XDG_CONFIG_HOME} ]; then
    mkdir -p ${XDG_CONFIG_HOME}
fi

for d in vim nvim tmux fish emacs git; do
    ln -s ~/dotfiles/${d} ${XDG_CONFIG_HOME}/${d}
done

ln -s ~/dotfiles/.Rprofile ~/.Rprofile

ln -s ~/dotfiles/.mybashrc ~/.mybashrc
echo source '${HOME}/.mybashrc' >> ~/.bashrc

ln -s ~/dotfiles/.xmodmap ~/.xmodmap
