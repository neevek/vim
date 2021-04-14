#!/bin/bash

mkdir -p undo_ swap_ backup_
cp .vimrc ../.vimrc
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +qall

# install bat and ripgrep
# brew install ripgrep
# brew install bat
