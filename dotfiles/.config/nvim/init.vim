call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'joshdick/onedark.vim' 

  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
  
  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  
  " React highlight
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

  " C# Highlight
  Plug 'neovim/nvim.net'
  
  " React highlight
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

  " File Explorer with Icons
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " Nerdtree git support!
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " File Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " AutoComplete
  Plug 'Valloric/YouCompleteMe'

  " Ez movement through code
  Plug 'easymotion/vim-easymotion'
call plug#end()

" Theme
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

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Key for easy motion
let mapleader=" "
nmap <Leader>f <Plug>(easymotion-s2)
nmap <Leader>x :x<CR>
nmap <Leader>q :q!<CR>

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" requires silversearcher-ag
" used to ignore gitignore files
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" open new split panes to right and below
set splitright
set splitbelow

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" use alt+hjkl to move between split/vsplit panels
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k

tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+;
" uses zsh instead of bash
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
