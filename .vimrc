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
syntax on

" statusline:
set laststatus=2
set statusline=%F
set statusline+=%=    " switch to right side
set statusline+=%{FugitiveStatusline()}\ \|
set statusline+=\ %l,%c

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'lifepillar/vim-solarized8'
Plugin 'digitaltoad/vim-pug'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'jonasleft/psi-epics.vim'
call vundle#end()           
filetype plugin indent on 

" Colorscheme, settings needed because of terminals

" This is only necessary if you use termguicolors:
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
set t_Co=256
set background=dark

colorscheme solarized8
"let g:solarized_termcolors=256


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

" FZF config:
" -----------
:let mapleader = "\<Space>"
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit',
      \ 'ctrl-t': 'tabedit'
      \ }
nnoremap <c-p> :FZF<cr>
nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>F :GFiles<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>g :Rg<CR>
nnoremap <silent> <leader>t :Tags<CR>

" UltiSnips :
" -----------
let g:UltiSnipsSnippetDirectories=[$HOME.'/dotfiles/snippets']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<S-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" Ignore these directories
set wildignore+=*/.git/**

" Vim Tmux Navigator Plugin config:
"----------------------------------
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-ö> :TmuxNavigatePrevious<cr>

" Search in files:
" let mapleader = "ü"
" nnoremap <Leader>f :execute "vimgrep /" . expand("<cword>") . "/j *" <Bar> cw<CR>
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

" Macros
" -----------------------
" Increment numbers in a column:
let @i = 'yiwjciw0'

" grep current word from current directory:
:nnoremap gR :grep "\<<cword>\>" %:p:h/*<CR>

" White spaces
" ------------
set listchars=tab:>~,nbsp:_,trail:.
set list

