set nocompatible
filetype off

set tabstop=2
set shiftwidth=2
"set expandtab
set ic        " ignore case
set hls       " highligthning
set is        " incsearch, show partial matches for a search phrase
set number    " line numbers
set hidden

" statusline:
set laststatus=2
set statusline=%F


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/psi-epics.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jonasleft/psi-epics.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'digitaltoad/vim-pug'
Plugin 'junegunn/vim-easy-align'
call vundle#end()            " required
filetype plugin indent on    " required

" Colorscheme, settings needed because of terminals
syntax on
let g:solarized_termcolors=256
set t_Co=256 
set background=dark
colorscheme desert

" change search highlightning:
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

" window navigation map:
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" easy align plugin map,  e.g. usage: ga*&
xmap ga <Plug>(EasyAlign)
