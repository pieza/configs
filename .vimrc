syntax on

colorscheme onedark 
set termguicolors

" Display the row numbers (line number)
set relativenumber

" Make the line number show up in the gutter instead of just '0'.
set number

" Add a bar on the side which delimits 80 characters.
set colorcolumn=80

" 72 characters makes it easier to read git log output.
autocmd Filetype gitcommit setl colorcolumn=72

" Will search the file as you type your query
set incsearch

" For some reason the mouse isn't enabled by default anymore...
set mouse=a

" Enable clipboard
set clipboard=unnamedplus

" Display commands
set showcmd

" Show line number
set ruler

" Text encoding
set encoding=utf-8

" mark correspondig brackets
set showmatch

" Ident code
set sw=2

" open new split panes to right and below
set splitright
set splitbelow
