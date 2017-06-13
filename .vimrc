" Vim configuration file
" Author: Jakub Burzynski (2015-2017)
" Plugins: Pathogen, Vundle, NERDTree, Tagbar (ctags), CtrlP, buftabline, vim-airline, YouCompleteMe
" Themes: solarized, monokai
" For installings plugins pathogen is the preffered first choice option, then vundle.
" Useful commands:
"   " :%/s/find/replace/g       replace occurences in whole file
"   " :echo expand(`%`)         print current file name
"   " :retab                    change spaces to tab in file
"   " :help ins-completion      checkout vim completion feature

" Pathogen

call pathogen#infect()

" Vundle

set nocompatible
filetype off

call vundle#begin('~/.vim/bundle/Vundle.vim')

Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" gitgutter
" set updatetime=500  " interval 500ms

" Vim settings

syntax on

set path+=**    " search down recursive, tab-completition for all file related tasks
set wildmenu    " display all matching files when tab complete

" use <^]> for jumping to tag, <g^]> to see list of tags found
" consider attach regenerating tags to :w
command! MakeTags !ctags -R .   

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" :set expandtab    set nolist      " white characters
set nowrap      " no text wrap
set number      " see line number
set showmatch   " show matching brackets

set autoindent  " always set autoidenting on
set copyindent  " copy the previous indentation
set smartindent
set cindent

set backspace=indent,eol,start    " allow backspacing over everthing in insert mode
set smarttab
set expandtab       " insert space characters whenever the tab key is pressed
set softtabstop=4
set tabstop=4       " how big the tab is
set shiftwidth=4    " number of spaces inserted for indentation
set textwidth=120   " automatic word wraping

" search settings
set hlsearch    " highlight search results
set ignorecase  " case insensitive search
set incsearch   " interactive search
set smartcase   " enable smart case search

" general
set comments=sl:/*,mb:\ *,elx:\ */
set hidden          " hide buffers instead closing
set ruler           " show the line and columnd number of the cursor
set title           " change the terminal's title
set novisualbell    " no alarms
set noerrorbells    " no alarms
set showcmd
set mouse=a         " turn on mouse support
set history=1000    " history level
set undolevels=1000 " undo level

" disable backup files
" set nobackup
" set noswapfile


" themes and colors at vimcolors.com
"colorscheme solarized   " set theme
"set background=light    " set theme settings

" other stuff
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
" map <F1>  " reserved <help>
map <F2> :NERDTreeToggle <CR>
map <F5> :TagbarToggle<CR>
map <F3> :bprev <CR>
map <F4> :bnext <CR>
map <F9> :hslip <CR>
map <F9> :vsplit <CR>
map <F10> :GitGutterToggle
" map <F11>     " reserved <fullscreen>
" map <F12>     " reserved


" Help section

" Brief help for Vundle
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
