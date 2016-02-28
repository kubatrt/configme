" Vim configuration file
" Author: Jakub Buyrznski (02.2016)
" Plugins: Pathogen, NERDTree, Tagbar, CVim

call pathogen#infect()

" paths for other plugins
" set viminfo+=n$HOME/_viminfo

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set number    " see line number
set showmatch " show matching brackets

"set nocompatible
set autoindent
set smartindent
set smarttab
set cindent

set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

"set textwidth=120

" set t_Co=256
syntax on
filetype plugin indent on

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

" Install OmniCppComplete like described on
" http://vim.wikia.com/wiki/C++_code_completion
" " This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" " Load standard tag files
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4

" key mapping
map <TAB> <C-w><C-w>
map <S-TAB> <C-w><C-h>
map <F2> :NERDTreeToggle <CR>
map <F5> :TagbarToggle<CR>
map <F3> :bprev <CR>
map <F4> :bnext <CR>
map <F9> :vsplit <CR>
map <F10> :set list
map <F11> :set expandtab
map <F12> :set noexpandtab

" search
noremap <C-F> :promptfind <CR>
inoremap <C-F> <ESC>:promptfind <CR>
noremap <C-R> :promptrepl <CR>
inoremap <C-R> <ESC>:promptrepl <CR>
