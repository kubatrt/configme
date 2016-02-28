" Vim configuration file
" Author: Jakub Buyrznski (02.2016)
" Plugins: Pathogen, NERDTree, Tagbar (ctags), (x)CVim, CtrlP, GitGutter, vim-airline 
" Themes: solarized, monokai
" <Ctrl-W>.. Vim split windows: s - horizontal v - vertical q - close
" :vsplit - vertical :split - horizontal
"

call pathogen#infect()

" paths for other plugins
" set viminfo+=n$HOME/_viminfo

filetype plugin indent on

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set number    " see line number
set showmatch " show matching brackets

"set nocompatible
set autoindent
set smartindent
set cindent
set smarttab
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4

set textwidth=120

set updatetime=500  " update for gitgutter 500ms

"set t_Co=256
syntax on
"colorscheme solarized   " set theme
"set background=light    " set theme settings

" diffrent background for guis and text editing
"if(has('gui_running')
"    set background=light
"else
"    set background=dark
"endif

set comments=sl:/*,mb:\ *,elx:\ */

" search
set hlsearch " highlight search results
set ignorecase "case insensitive search
set incsearch "interactive search
set smartcase " enable smart case search

"set hidden
set ruler
"set vb
set noerrorbells  " disable error signals
set showcmd
set mouse=a
set history=1000
set undolevels=1000


"highlighc current line and column
":hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred
"guifg=white
":hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred
"guifg=white
":nnoremap <Leader>l :set cursorline!<CR>
":nnoremap <Leader>c :set cursorcolumn!<CR>
"


" key mapping
map <TAB> <C-w><C-w>
map <S-TAB> <C-w><C-h>
map <F2> :NERDTreeToggle <CR>
map <F5> :TagbarToggle<CR>
map <F3> :bprev <CR>
map <F4> :bnext <CR>
map <F9> :vsplit <CR>
map <F10> :GitGutterToggle
map <F11> :set expandtab
map <F12> :set noexpandtab

