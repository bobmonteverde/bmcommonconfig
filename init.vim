" dein bindings {
    if &compatible
      set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=/Users/bmonteverde/.config/nvim/repos/github.com/Shougo/dein.vim
    call dein#begin('/Users/bmonteverde/.config/nvim')
    call dein#add('Shougo/dein.vim')

    " Bundles:
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('Shougo/denite.nvim')
    call dein#add('Shougo/neoyank.vim')
    "call dein#add('Shougo/neoinclude.nvim')
    "call dein#add('Shougo/neocomplete.vim')
    "call dein#add('Shougo/neosnippet.vim')
    "call dein#add('Shougo/neosnippet-snippets')
    call dein#add('ctrlpvim/ctrlp.vim')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('mhinz/vim-grepper')
    call dein#add('tpope/vim-repeat')
    call dein#add('tpope/vim-surround')
    call dein#add('tpope/vim-commentary')
    call dein#add('justinmk/vim-sneak')
    "call dein#add('mattn/webapi-vim')
    "call dein#add('jbgutierrez/vim-babel')
    "call dein#add('ervandew/supertab')

    call dein#add('rizzatti/dash.vim')

    "call dein#add('SirVer/ultisnips')
    "call dein#add('justinj/vim-react-snippets')
    "call dein#add('honza/vim-snippets')

    " COLORS
    call dein#add('flazz/vim-colorschemes')

    " LANGUAGE SUPPORT
    call dein#add('digitaltoad/vim-jade')
    call dein#add('cakebaker/scss-syntax.vim')
    call dein#add('hail2u/vim-css3-syntax')
    call dein#add('tpope/vim-markdown')
    call dein#add('tpope/vim-haml')
    call dein#add('pangloss/vim-javascript')
    "call dein#add('othree/yajs.vim')
    call dein#add('othree/javascript-libraries-syntax.vim')
    call dein#add('carlitux/deoplete-ternjs')
    call dein#add('mxw/vim-jsx')
    call dein#add('elzr/vim-json')
    call dein#add('leafgarland/typescript-vim')

    " VERSION CONTROL
    call dein#add('tpope/vim-fugitive')
    "call dein#add('airblade/vim-gitgutter')

    " FILE EXPLORER
    call dein#add('scrooloose/nerdtree')
    "call dein#add('justinmk/vim-dirvish')
    call dein#add('justinmk/vim-gtfo')

    " BUFFER SWITCHING
    "call dein#add('weynhamz/vim-plugin-minibufexpl')

    " Required:
    call dein#end()

    " Required:
    filetype plugin indent on
    syntax enable

    " install not installed plugins on startup.
    if dein#check_install()
        call dein#install()
    endif
" }


" Key Bindings {
    let mapleader = ','
    nnoremap ; :

    set pastetoggle=<F2> "paste mode to turn off autoindent
    nmap <F8> :TagbarToggle<CR>

    " forgot to sudo? use w!! and sudo after closing the file
    cmap w!! w !sudo tee % >/dev/null

    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

    " disable arrow keys... forcing myself to us hjkl
    " map <up> <nop>
    " map <down> <nop>
    " map <left> <nop>
    " map <right> <nop>

    "I still find the arrow keys useful while in insert mode... maybe I will grow out of this
    "imap <up> <nop>
    "imap <down> <nop>
    "imap <left> <nop>
    "imap <right> <nop>
" }


" Basics {
    set noexrc "don't use local version of .(g)vimrc, .exrc
    set nobackup
    " set noswapfile

    set background=dark "we plan to use a dark background
    "colorscheme Tomorrow-Night-Bright
    "colorscheme fu
    "colorscheme distinguished
    colorscheme twilight256
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
    nnoremap <C-n> :bnext<CR>
    nnoremap <C-p> :bprevious<CR>

    "Save and restore session
    map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
    map <F3> :source ~/vim_session <cr>     " And load session with F3

    " Providers
    let g:python_host_prog = '/usr/bin/python'
    let g:python3_host_prog = '/usr/local/bin/python3'
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

    set tabstop=2
    set shiftwidth=2
    set expandtab

    " set ignorecase
    set smartcase

    set nowrap
" }


" GUI Specific {
    if has("gui_running")
        set columns=120
        set lines=40
        set mousehide "hide mouse while typing
        colorscheme lucius
    endif
" }


" Auto complete {
    " autocmd FileType python set omnifunc=pythoncomplete#Complete
    " autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    " autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    " autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    " autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
    " autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    " autocmd FileType c set omnifunc=ccomplete#Complete
" }


" deoplete {
    let g:deoplete#enable_at_startup = 1
" }

" { airline
    let g:airline#extensions#tabline#enabled = 1
    "let g:airline#extensions#tabline#left_sep = ' '
    "let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline_powerline_fonts = 1
" }

" mini buffer explorer {
    let g:miniBufExplMapWindowNavVim = 1
    let g:miniBufExplMapWindowNavArrows = 1
    let g:miniBufExplMapCTabSwitchBufs = 1
    let g:miniBufExplModSelTarget = 1
" }

" ultisnips {
    " let g:UltiSnipsExpandTrigger='<tab>'
    " let g:UltiSnipsJumpForwardTrigger='<c-b>'
    " let g:UltiSnipsJumpBackwardTrigger='<c-z>'
" }

" neoyank {
    let g:neoyank#file = $HOME.'/.config/nvim/yankring.txt'
" }

" automatically remove trailing whitespace on save to some filetypes {
    function! <SID>StripTrailingWhitespaces()
        let l = line(".")
        let c = col(".")
        %s/\s\+$//e
        call cursor(l, c)
    endfun

    autocmd BufWritePre *.css,*.scss,*.js,*.json,*.html :call <SID>StripTrailingWhitespaces()
" }

" syntax highlighting {
    let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" }


" deal with files updated outside of nvim {
" autocmd BufEnter,FocusGained * checktime "Solution below is  more complete
    augroup AutoSwap
        autocmd!
        autocmd SwapExists *  call AS_HandleSwapfile(expand('<afile>:p'), v:swapname)
    augroup END

    function! AS_HandleSwapfile (filename, swapname)
        " if swapfile is older than file itself, just get rid of it
        if getftime(v:swapname) < getftime(a:filename)
                call delete(v:swapname)
                let v:swapchoice = 'e'
        endif
    endfunction
    autocmd CursorHold,BufWritePost,BufReadPost,BufLeave *
        \ if isdirectory(expand("<amatch>:h")) | let &swapfile = &modified | endif

    augroup checktime
        au!
        if !has("gui_running")
            "silent! necessary otherwise throws errors when using command
            "line window.
            autocmd BufEnter,CursorHold,CursorHoldI,CursorMoved,CursorMovedI,FocusGained,BufEnter,FocusLost,WinLeave * checktime
        endif
    augroup END
" }
