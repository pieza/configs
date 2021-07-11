call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'joshdick/onedark.vim' 

  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'} 
  
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
  
  " HMTL autocomplete with emmet                                                
  Plug 'mattn/emmet-vim'

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
