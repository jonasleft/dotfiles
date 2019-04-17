" source in main vimrc with: 'so ~/dotfiles/.vimrc'
" clone vundle with:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim  

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
set statusline=%F


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'digitaltoad/vim-pug'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'jonasleft/psi-epics.vim'
call vundle#end()           
filetype plugin indent on 

" Colorscheme, settings needed because of terminals
syntax on
let g:solarized_termcolors=256
set t_Co=256 
set background=dark

colorscheme desert

" change search highlightning:
hi Search ctermbg=LightYellow
hi Search ctermfg=DarkGray

" window navigation map:
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" easy align plugin map,  e.g. usage: ga*&
xmap ga <Plug>(EasyAlign)

" NERDTree config:
map <C-n> :NERDTreeToggle<CR>

" ctrl-p plugin config:
" Set no max file limit
let g:ctrlp_max_files = 0
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0

" Ignore these directories
set wildignore+=*/.git/**

" Search in certain directories a large project (hardcoded for now)
"cnoremap %proj <c-r>=expand('~/Projects/some-project')<cr>
" ga = go api
"map <Leader>gp :CtrlP %proj/api/<cr>
" gf = go frontend
"map <Leader>gf :CtrlP %proj/some/long/path/to/frontend/code/<cr>

" Vim Tmux Navigator Plugin config:
"----------------------------------
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-ö> :TmuxNavigatePrevious<cr>

" Search in files:
let mapleader = "ü"
nnoremap <Leader>f :execute "vimgrep /" . expand("<cword>") . "/j *" <Bar> cw<CR>
set nowrap
set clipboard=unnamed

" vimdiff settings:
" -----------------
" When using vimdiff or diff mode
highlight DiffAdd    term=bold         ctermbg=darkgreen ctermfg=white    cterm=bold guibg=DarkGreen  guifg=White    gui=bold
highlight DiffText   term=reverse,bold ctermbg=red       ctermfg=yellow   cterm=bold guibg=DarkRed    guifg=yellow   gui=bold
highlight DiffChange term=bold         ctermbg=black     ctermfg=white    cterm=bold guibg=Black      guifg=White    gui=bold
highlight DiffDelete term=none         ctermbg=darkblue  ctermfg=darkblue cterm=none guibg=DarkBlue   guifg=DarkBlue gui=none
" When viewing a diff or patch file
highlight diffRemoved term=bold ctermbg=black   ctermfg=red    cterm=bold guibg=DarkRed     guifg=white gui=none
highlight diffAdded   term=bold ctermbg=black   ctermfg=green  cterm=bold guibg=DarkGreen   guifg=white gui=none
highlight diffChanged term=bold ctermbg=black   ctermfg=yellow cterm=bold guibg=DarkYellow  guifg=white gui=none
highlight diffLine    term=bold ctermbg=magenta ctermfg=white  cterm=bold guibg=DarkMagenta guifg=white gui=none
highlight diffFile    term=bold ctermbg=yellow  ctermfg=black  cterm=none guibg=DarkYellow  guifg=white gui=none
