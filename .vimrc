set nocompatible
filetype off

set tabstop=2
set shiftwidth=2
set expandtab
set ic        " ignore case
set hls       " highligthning
set is        " incsearch, show partial matches for a search phrase
set number    " line numbers
set hidden

" statusline:
set laststatus=2
set statusline+=%F


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/psi-epics.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'nickez/epics.vim'
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Colorscheme, settings needed because of terminals
syntax on
let g:solarized_termcolors=256
set t_Co=256 
set background=dark
colorscheme solarized


