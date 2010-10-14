
" Basics {
    set nocompatible "explicitly get out of vi-compatible mode
    set noexrc "don't use local version of .(g)vimrc, .exrc
    
    set background=dark "we plan to use a dark background
    colorscheme pablo
    syntax on "syntax highlighting on
" }


" General {
    filetype plugin indent on " load filetype plugins/indent settings
    set autochdir "always switch to current file directory
    set backspace=indent,eol,start "make backspace a more flexible
    set directory=/tmp "where swap files go
    set mouse=a " use mouse evrywhere
    set wildmenu
" }


" Vim UI {
    set incsearch "search as you type

    set ruler "show current position along the bottom
    set scrolloff=3 "keep 3 lines when scrolling

    set showmatch "show matching bracket
    set showcmd "show command being typed
    
    set novisualbell "don't blink
    set noerrorbells "don't make noises
" }


" Text Formatting/Layout {
    set autoindent
    set smartindent

    set tabstop=4
    set shiftwidth=4
    set expandtab

    set ignorecase
    set smartcase

    set nowrap
" }


" GUI Specific {
    if has("gui_running")
        set columns=120
        set lines=40
        set mousehide "hide mouse while typing
    endif
" }


" Auto complete {
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    autocmd FileType c set omnifunc=ccomplete#Complete
" }

