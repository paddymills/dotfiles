
" ===== vim builtin settings =====
syntax enable
set term=xterm-256color

set showtabline=2
set laststatus=2
set number relativenumber
set noshowmode

set mouse=a

set autoindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

" searching
set smartcase

" ===== plugins list =====
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/forest-night'
Plug 'ghifarit53/tokyonight-vim'
Plug 'ryanoasis/vim-devicons'


Plug 'preservim/nerdtree'

call plug#end()


" ===== theme/colorscheme =====
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1
colorscheme tokyonight

let NERDTreeQuitOnOpen=3
let NERDTreeShowHidden=1

" ===== lightline config =====
let g:lightline = {'colorscheme' : 'tokyonight'}

map <Tab> :NERDTreeToggle<CR>
