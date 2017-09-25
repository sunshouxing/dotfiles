" => plugins manager {{{
  filetype off                         " required

  " set the runtime path to include vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  " let vundle manage vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'scrooloose/nerdtree'
  Plugin 'tpope/vim-surround'
  Plugin 'kien/ctrlp.vim'
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-commentary'
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  Plugin 'isRuslan/vim-es6'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'benmills/vimux'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'sheerun/vim-polyglot'
  Plugin 'Yggdroot/indentLine'
  Plugin 'altercation/vim-colors-solarized'

  " all of your plugins must be added before the following line
  call vundle#end()                    " required
" }}}
