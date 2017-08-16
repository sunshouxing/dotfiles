" => mapleader {{{
  " with a map leader it's possible to do extra key combinations
  let mapleader = ","

  " fast saving
  nmap <leader>w :w!<cr>

  " disable highlight when <leader><cr> is pressed
  map <silent> <leader><cr> :noh<cr>
" }}}

" => plugins manager {{{
  set nocompatible                       " be improved, required
  filetype off                           " required

  " set the runtime path to include vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  " let vundle manage vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'scrooloose/nerdtree'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-commentary'
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  Plugin 'isRuslan/vim-es6'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'joshdick/onedark.vim'
  Plugin 'benmills/vimux'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'sheerun/vim-polyglot'
  Plugin 'Yggdroot/indentLine'

  " all of your plugins must be added before the following line
  call vundle#end()                      " required
" }}}

" => general {{{
  " not compatible with vi
  set nocompatible
  
  " highlight search results
  set hlsearch

  " set to auto read when a file is changed from the outside
  set autoread

  " don't redraw while executing macros (good performance config)
  set lazyredraw

  " turn backup off, since most stuff is in svn, git etc
  set nobackup
  set nowritebackup
  set noswapfile

  " use spaces instead of tabs
  set expandtab

  " be smart when using tabs
  set smarttab

  " round indent to multiple of 'shiftwidth'
  set shiftround

  " 1 tab == 4 spaces
  set shiftwidth=4
  set tabstop=4
  set softtabstop=4

  set autoindent  "Auto indent
  set smartindent "Smarteindent
  set wrap        "Wrap lines

  " toggle paste with f10
  set pastetoggle=<F10>

  " toggle list mode with f11 
  nnoremap <A-F11> :set list! listchars=space:.,trail:#,eol:$<CR>

  " toggle line number with f12
  set number
  nnoremap <F12> :set number!<CR>

" }}}

" => filetype {{{
  " enable filetype detection, plugins, indent [must after vundle#end()]
  filetype on
  filetype plugin on
  filetype indent on
  autocmd FileType javascript,html,xml,css,pug set ai sw=2 ts=2 sts=2
" }}}

" => colors and fonts {{{
  " enable syntax highlighting
  syntax enable

  " set utf8 as standard encoding and en_us as the standard language
  set encoding=utf8

  " use unix as the standard file type
  set fileformats=unix,dos,mac

  " use atom onedark color scheme
  set termguicolors
  colorscheme onedark
  
  " make comments italic (must set after colorscheme)
  highlight Comment cterm=italic
" }}}

" => buffer {{{
  nnoremap <C-n> :bn<CR>
  nnoremap <C-p> :bp<CR>
  nnoremap <C-x> :bd<CR>
" }}}

" => window {{{
" }}}

" => airline {{{
  let g:airline_theme='onedark'
  " let g:airline_theme='bubblegum'
  let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#buffers_label = 'b'
  let g:airline#extensions#tabline#formatter = 'foo'
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline_powerline_fonts = 1
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
" }}}

" => nerdtree {{{
  map <leader>nn :NERDTreeToggle<cr>
  map <leader>nf :NERDTreeFind<cr>
  map <leader>nb :NERDTreeFromBookmark<Space>
  let g:NERDTreeQuitOnOpen=1
  let g:NERDTreeShowBookmarks=1
  let NERDTreeIgnore=['node_modules$[[dir]]', 'bower_components$[[dir]]']
" }}}

" fugitive shortcuts {{{
  nmap <silent> <leader>gs :Gstatus<cr>
  nmap <leader>ge :Gedit<cr>
  nmap <silent><leader>gr :Gread<cr>
  nmap <silent><leader>gb :Gblame<cr>
" }}}

let g:indentLine_char = '⋮'
map <leader>ii :IndentLinesToggle<cr>

" vim:set ts=2 sw=2 sts=2 fdm=marker: "
