my vim setup
------------

In the following I summarize the vim mappings which make my daily life easier. I hope this would be useful to someone else.

general settings
----------------

- `let mapleader = ","` - mapping `<leader>` to `,` 

in normal mode
--------------

- `,w` - save
- `,q` - quit
- `<space>` - copy the word under cursor
- `<space><space>` - replace the word under cursor with what is in the register, i.e. select -> delete -> paste
- `tt` - close the current window/tab
- `<leader>r` - replacing, edit all occurances of the word under cursor, and hit `<enter>` to commit
- `<leader>x` - create a new tab, and switch to the new tab
- `<leader>c` - close the current tab
- `<leader>f` - open CtrlP
- `<leader>t` - open taglist
- `<leader>g` - goto function definition
- `<C-c>` - switch to next tab
- `<C-h>` - when there are multiple horizontal windows, switch to the LEFT window
- `<C-l>` - when there are multiple horizontal windows, switch to the RIGHT window
- `<C-j>` - when there are multiple vertical windows, switch to the BOTTOM window
- `<C-k>` - when there are multiple vertical windows, switch to the TOP window
- `<F2>` - enter paste mode so indents be reserved for pasted text 
- `<F3>` - open NERDTree
- `<F7>` - switch to next theme
- `<F8>` - switch to previous theme
- `<F9>` - build tags for files under the directory


in insert mode
--------------

- `jk` - same as `<esc>`
- `<F3>` - enter the current time
