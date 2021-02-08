let mapleader =","
map <Tab> :NERDTreeToggle<CR>
map <leader> :Goyo<CR>

call plug#begin('~/.vim/autoload')
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
call plug#end()

set laststatus=2
set number relativenumber
syntax on
set nobackup       
set nowritebackup  
set noswapfile
set t_u7=
set bg=dark
let g:gruvbox_contrast_dark='hard'
silent colorscheme gruvbox
