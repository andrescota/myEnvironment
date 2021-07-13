""""""""""""""""""""""
" a2gs .vimrc
""""""""""""""""""""""

set encoding=utf-8
set nocompatible
set statusline=
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %{&fileencoding}
set statusline+=\ %{&fileformat}
set statusline+=\ %p%%\/%L
set statusline+=\ %l:%c

syntax on
syntax enable
color torte
set nowrap
set number
set noerrorbells
set showmatch
set showcmd
set laststatus=2
set tabstop=3
set shiftwidth=3
set softtabstop=3
set cino=)3;>3;<3
set cindent
set title
set mouse=a
set incsearch
set nofoldenable
set wildmenu
set colorcolumn=120
set confirm
set noexpandtab
"set autoindent
set nosmartindent
set comments=sr:/*,mb:*,el:*/,://
set formatoptions=croql
set guifont=Courier\ 18
set hlsearch
set cursorline
set backspace=indent,eol,start
set tabpagemax=100
set foldmethod=syntax
set fileformats=unix,dos,mac
set shell=/bin/bash
set timeoutlen=500

"map <C-c> :below terminal<CR>
map <C-q>q :qa!<CR>
map <C-w>w :w<CR>
map <C-q>a :qa<CR>
map <C-w>a :wa<CR>
map <C-w>aq :wa<CR>:qa<CR>
map <C-h>l :nohl<CR>

map <F2> zfat
map <F3> zo

autocmd Filetype cpp setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab cino=)4;>4;<4
autocmd Filetype hpp setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab cino=)4;>4;<4
autocmd FileType python setlocal noexpandtab tabstop=3 shiftwidth=3 softtabstop=3
