call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'haishanh/night-owl.vim'

  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'} 
  
  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  
  " React highlight
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  
  " Ultisnips
  Plug 'SirVer/ultisnips'
  
  " ES2015 code snippets (Optional)
  Plug 'epilande/vim-es2015-snippets'

  " React code snippets
  Plug 'mlaursen/vim-react-snippets'

  " C# Highlight
  Plug 'neovim/nvim.net'
  
  " Python autocomplete
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-path'

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
  
  " Autoclose tags
  Plug 'alvan/vim-closetag'
  
  " Easy comments
  Plug 'tpope/vim-commentary'

  " AutoComplete
  Plug 'Valloric/YouCompleteMe'

  " Ez movement through code
  Plug 'easymotion/vim-easymotion'
  
  " Fancy status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()
