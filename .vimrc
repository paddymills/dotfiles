" ===== plugins list =====
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/forest-night'
Plug 'ghifarit53/tokyonight-vim'

Plug 'preservim/nerdtree'

call plug#end()

" ===== vim builtin config =====
syntax enable
set termguicolors
set showtabline=2
set laststatus=2
set number
set noshowmode

" ===== colorscheme config =====
let g:tokyonight_style = 'storm'
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

map <C-o> :NERDTreeToggle<CR>

" ===== lightline config =====
let g:lightline = {
    \ 'active': {
    \ 'left': [ ['mode'], ['filename'] ],
    \ 'right': [ ['filetype'] ]},
    \ 'inactive': {
    \ 'left': [ ['filename'] ],
    \ 'right': [] }
    \ }
let g:lightline.tab = {
 \ 'active' : [ 'filename', 'modified' ],
 \ 'inactive' : [ 'filename', 'modified' ] }
