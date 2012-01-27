" AUTO INSTALL ALL PLUGINS WITH FOLLOWING LINE:
" curl -s https://raw.github.com/bronson/vim-update-bundles/master/vim-update-bundles | ruby


" Plugins {

    runtime bundle/vim-pathogen/autoload/pathogen.vim
    " Bundle: tpope/vim-pathogen
    call pathogen#infect()


    " COLORS
    " Bundle: Wombat
    " Bundle: desert256.vim

    " LANGUAGE SUPPORT:
    " Bundle: jade.vim
    " Bundle: wavded/vim-stylus
    " Bundle: tpope/vim-markdown
    " Bundle: pangloss/vim-javascript

    " VERSION CONTROL
    " Bundle: tpope/vim-fugitive

    " FILE EXPLORER
    " Bundle: Bogdanp/quicksilver.vim
    " Bundle: The-NERD-tree

    " BUFFER SWITCHING
    " Bundle: TabBar


    " Bundle: Tagbar

    " Bundle: tpope/vim-repeat
    " Bundle: tpope/vim-surround
    " Bundle: Gist.vim
    " Bundle: ervandew/supertab

" }



" Key Bindings {

    set pastetoggle=<F2> "paste mode to turn off autoindent
    nmap <F8> :TagbarToggle<CR>

    nnoremap ; :

    " forgot to sudo? use w!! and sudo after closing the file
    cmap w!! w !sudo tee % >/dev/null

    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

    " disable arrow keys... forcing myself to us hjkl
    map <up> <nop>
    map <down> <nop>
    map <left> <nop>
    map <right> <nop>

    "I still find the arrow keys useful while in insert mode... maybe I will grow out of this
    "imap <up> <nop>
    "imap <down> <nop>
    "imap <left> <nop>
    "imap <right> <nop>

" }



" Basics {
    set nocompatible "explicitly get out of vi-compatible mode
    set noexrc "don't use local version of .(g)vimrc, .exrc
    set nobackup
    " set noswapfile

    set background=dark "we plan to use a dark background
    colorscheme desert256
    syntax on "syntax highlighting on

    set list
    set listchars=tab:>.,trail:.,extends:#,nbsp:.

" }


" General {
    filetype plugin indent on " load filetype plugins/indent settings
    set autochdir "always switch to current file directory
    set backspace=indent,eol,start "make backspace a more flexible
    set directory=/tmp "where swap files go
    set mouse=a " use mouse evrywhere
    set wildmenu
    set hidden "supposed to make it so bufers hide not close, stop annoying save edits when switching buffers
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
"    set autoindent
    set smartindent

    set tabstop=2
    set shiftwidth=2
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
        colorscheme wombat
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

" mini buffer explorer {
    let g:miniBufExplMapWindowNavVim = 1 
    let g:miniBufExplMapWindowNavArrows = 1 
    let g:miniBufExplMapCTabSwitchBufs = 1 
    let g:miniBufExplModSelTarget = 1 
" }


