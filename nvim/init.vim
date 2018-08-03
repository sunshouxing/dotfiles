" This must be first, because it changes other options as a side effect.
set nocompatible

set linespace=10

"=========================================
" general config
"=========================================
set number            " Line numbers are good
set relativenumber    " Relative line numbers are better
set hidden            " Buffers can exist in the background
set autoread          " Reload files changed outside vim
set lazyredraw        " Don't redraw while executing macros

" With a map leader it's possible to do extra key combinations
let mapleader = ","
" Fast saving
nmap <leader>w :w!<CR>
nmap <leader>W :w !sudo tee %<CR>


"=========================================
" install plugins (~/.config/nvim/plugged)
"=========================================
call plug#begin()
  source ~/.config/nvim/plugins.vim
call plug#end()


"=========================================
" plugins custom settings
"=========================================
if filereadable(expand("~/.config/nvim/settings.vim"))
  source ~/.config/nvim/settings.vim
endif


"=========================================
" user defined scripts
"=========================================
if filereadable(expand("~/.config/nvim/scripts.vim"))
  source ~/.config/nvim/scripts.vim
endif


"=========================================
" file type & encoding & formats
"=========================================
filetype on
filetype plugin on
filetype indent on

" set utf8 as standard encoding and en_us as the standard language
set encoding=utf8

" use unix as the standard file type
set fileformats=unix,dos,mac


"=========================================
" indent
"=========================================
set autoindent
set smartindent
set expandtab         " Use spaces instead of tabs
set smarttab          " Be smart when using tabs
set shiftround        " Round indent to multiple of 'shiftwidth'

" 1 tab == 4 spaces
set shiftwidth=4 tabstop=4 softtabstop=4

set textwidth=80
set colorcolumn=+1
set cursorline


"=========================================
" turn off swap files 
"=========================================
set noswapfile
set nobackup
set nowritebackup


"=========================================
" search
"=========================================
set incsearch         " find the next match as we type the search
set hlsearch          " highlight searches by default
set ignorecase        " ignore case when searching...
set smartcase         " ...unless we type a capital

" disable highlight with <leader><CR>
map <silent><leader><CR> :nohlsearch<CR>


"=========================================
" folds
"=========================================
set foldmethod=indent " Fold based on indent
set foldnestmax=3     " Deepest fold is 3 levels
set nofoldenable      " Don't fold by default


"=========================================
" system clipboard
"=========================================
" select all with CTRL-A
nnoremap <C-a> gg0vG$
" copy selected contents to system clipboard with CTRL-C
vnoremap <C-c> "+y
" paste contents in system clipboard with CTRL-V
inoremap <C-v> <F10><C-r>+<F10><ESC>


"=========================================
" function keys mapping
"=========================================
" reload vimrc with F5
nnoremap <silent><F5> :source ~/.vimrc<CR>

" eslint current javascript file with F6
nnoremap <silent><F6> :call Eslint()<CR>

" toggle list mode with F9
nnoremap <silent><F9> :set list! listchars=space:.,trail:#,eol:$<CR>

" toggle paste with F10
set pastetoggle=<F10>

" toggle relative line number with F11
nnoremap <silent><F11> :set relativenumber!<CR>

" toggle line number with F12
nnoremap <silent><F12> :set number!<CR>


"=========================================
" window & tab & buffer
"=========================================
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
nnoremap <C-x> :bd<CR>
nnoremap <leader>tc :tabclose<CR>


" vim:set ts=2 sw=2 sts=2: "
