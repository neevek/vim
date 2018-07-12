set nocompatible              " be iMproved, required
filetype off                  " required
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'

Plugin 'snipMate'
Plugin 'taglist.vim'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'plasticboy/vim-markdown'
" Plugin 'vividchalk.vim'
Plugin 'github-theme'
Plugin 'syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'mileszs/ack.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'fatih/vim-go'
Plugin 'python.vim'
Plugin 'pangloss/vim-javascript'
"Plugin 'jeaye/color_coded'
Plugin 'posva/vim-vue'
Plugin 'DoxygenToolkit.vim'
Plugin 'Align'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




let mapleader = ","

set nobackup		
set history=10000
set incsearch		" do incremental searching

set pastetoggle=<F2>
set shiftwidth=2
set ts=2
set expandtab
set tabstop=2
set smartindent
set nu
set encoding=utf-8
let &termencoding=&encoding
set fileencodings=utf-8,gb18030,gbk,gb2312,big5,utf-16
set autoread
" Allow windows to get fully squashed
set winminheight=0     
set winminwidth=0     
au FileType python setl sw=2 sts=2 et

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <leader>w :w<cr>
nnoremap <leader>q :qa<cr>
nnoremap <leader>x :tabnew<cr>
nnoremap <leader>c :tabclose<cr>
nnoremap <C-c> :tabnext<cr>
nnoremap <leader>. <c-w>+
nnoremap <leader>, <c-w>-
" maximize current window
noremap <c-m> <c-w>_
" Switching among different tabs
noremap <F5> gt
noremap <F6> gT
nnoremap <leader>ee <c-w>=
" goto function definition
nnoremap <leader>g g<c-]>
" replace
nnoremap <Leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>
" press SPACE to yank the word under cursor, 
" and move the cursor one character forward
nnoremap <space> viwye<space><esc>
" press SPACE twice to delete the word under cursor, and paste 
" the text in register in the place originally taken by the deleted word
nnoremap <space><space> viw"_d"+Pa<esc>
" delete text in in double quotes
nnoremap <leader>d di"
" delete text in in double quotes and paste what is in the register in quotes
nnoremap <leader>a "_di"P
" delete text in in single quotes
nnoremap <leader>dd di'
" delete text in in single quotes and paste what is in the register in quotes
nnoremap <leader>aa "_di'P
" a shortcut to open ~/.vimrc in a vertical split-window
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" map jk to exit insert mode
inoremap jk <ESC>
" close current window
nnoremap tt <Esc>:q<CR>
nnoremap mm :!!<CR>

nnoremap <F7> :PrevColorScheme<CR>
nnoremap <F8> :NextColorScheme<CR>

" use the system clipboard
set clipboard=unnamed

" for auto complete, pressing enter or space to choose the auto-complete option {{{
" http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <SPACE> pumvisible() ? "\<C-y><SPACE>" : "<SPACE>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" }}}





" NERDTree 
let g:NERDTree_title="[NERDTree]"  
let g:NERDTreeWinSize=40
let g:NERDTreeAutoCenter=1
let g:NERDTreeShowBookmarks=1
noremap <F3> :NERDTreeToggle<CR> 

"function! NERDTree_Start()  
  "exec 'NERDTree'  
"endfunction  
"function! NERDTree_Toggle()  
  "exec 'NERDTreeToggle'  
"endfunction  
"function! NERDTree_IsValid()  
  "return 1  
"endfunction

" taglist 
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_WinWidth = 40
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1  
let Tlist_Use_Right_Window=1
nnoremap ,t :TlistToggle<CR>
noremap <F9> :!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" remember to run 'ctags -R -f ~/.vim/commontags /usr/include /usr/local/include'
set tags+=~/.vim/commontags
let Tlist_Exit_OnlyWindow=1


" ctrlp
" http://kien.github.com/ctrlp.vim/#installation
"set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap ,f :CtrlP <CR>
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|class|o)$'


" snipMate 
"let g:snippets_dir="~/.vim/bundle/snipMate/snippets/,~/.vim/.snippets/"
let g:snippets_dir="~/.vim/.snippets/"


set timeoutlen=200
set backupdir=~/.vim/backup_//
set directory=~/.vim/swap_//
set undodir=~/.vim/undo_//

" press <F3> to input the current timestamp at insert mode
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" http://stackoverflow.com/a/18234204/668963
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++'


" https://github.com/pangloss/vim-javascript
let g:javascript_enable_domhtmlcss = 1





" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Dec 17
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif


colo neverland-darker
"colo RailsCasts

hi Search guibg=peru guifg=wheat
hi Search cterm=NONE ctermfg=black ctermbg=grey

set colorcolumn=81

let python_highlight_all = 1

let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["java"] }
let g:syntastic_cpp_check_header = 1
let g:syntastic_c_check_header = 1

" https://stackoverflow.com/a/26662103/668963
autocmd BufEnter *.c*,*.h,*.hpp :setlocal cindent cino=j1,(0,ws,Ws,l1
