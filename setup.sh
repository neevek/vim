#!/bin/bash

mkdir undo_ swap_ backup_
cp .vimrc ../.vimrc
git submodule add https://github.com/VundleVim/Vundle.vim bundle/Vundle.vim
git submodule update --init bundle/Vundle.vim
vim +PluginInstall +qall
