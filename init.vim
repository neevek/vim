" this config file is for NeoVim: ~/.config/nvim/init.vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
:tnoremap <Esc> <C-\><C-n>
:tnoremap jk <C-\><C-n>
nnoremap <leader>z :new<CR>:terminal<CR>i source $HOME/.bash_profile<CR><C-L>
