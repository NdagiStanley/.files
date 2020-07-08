#!/usr/bin/env bash

function __core__() {
    # Vim
    cp .vimrc ~/.vimrc
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

    # Zsh Autosuggestions
    ZSH_AUTOSUGGESTIONS_DIR="$ZSH_CUSTOM/plugins/zsh-autosuggestions"
    if [ ! -d "$ZSH_AUTOSUGGESTIONS_DIR" ]; then
        sudo git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_AUTOSUGGESTIONS_DIR
    fi

    # Rafiki zsh theme
    mkdir -p $ZSH_CUSTOM/themes && sudo curl -o $ZSH_CUSTOM/themes/rafiki.zsh-theme https://raw.githubusercontent.com/NdagiStanley/rafiki-zsh/own-editions/rafiki.zsh-theme

}

if [ "$1" != "" ] && type "__$1__" &> /dev/null; then
    eval "__$1__"
else
    echo "Usage: ./setup.sh core"
fi
