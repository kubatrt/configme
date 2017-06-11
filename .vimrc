" Vim configuration file
" Author: Jakub Burzynski (2015-2017)
" Plugins: Pathogen, Vundle, NERDTree, Tagbar (ctags), CtrlP, buftabline, vim-airline, YouCompleteMe
" Themes: solarized, monokai
" For installings plugins pathogen is the preffered first choice option, then vundle
"

" Pathogen
call pathogen#infect()

" Vundle
set nocompatible
filetype off

call vundle#begin('~/.vim/bundle/Vundle.vim')

Plugin 'Valloric/YouCompleteMe'


" gitgutter
" set updatetime=500  " interval 500ms


filetype plugin indent on
syntax on

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set nowrap
set number      " see line number
set showmatch   " show matching brackets
set autoindent  " always set autoidenting on
set copyindent  " copy the previous indentation
set smartindent
set cindent
set backspace=indent,eol,start    " allow backspacing over everthing in insert mode
set smarttab
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set textwidth=120

set hlsearch    " highlight search results
set ignorecase  " case insensitive search
set incsearch   " interactive search
set smartcase   " enable smart case search

set ruler
set hidden  " hide buffers instead closing
set title   " change the terminal's title
set comments=sl:/*,mb:\ *,elx:\ */
set novisualbell
set noerrorbells
set showcmd
set mouse=a
set history=1000
set undolevels=1000

" no backup
" set nobackup
" set noswapfile

" white characters
" set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.

" vimcolors.com
"colorscheme solarized   " set theme
"set background=light    " set theme settings

"highlighc current line and column
":hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred
"guifg=white
":hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred
"guifg=white
":nnoremap <Leader>l :set cursorline!<CR>
":nnoremap <Leader>c :set cursorcolumn!<CR>
"
" set pasetoggle=<F8>

" magic trick!
nnoremap ; :

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

" Vundle
call vundle#end()

