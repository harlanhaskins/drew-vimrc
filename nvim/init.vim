" Fix shell
set shell=/bin/bash

" Not compatible with Vi
set nocompatible

" User files (optional)
silent! source ~/.vimrc_user

" Enable mouse
set mouse=a

if !has('nvim')
    set ttymouse=xterm2
endif

set foldmethod=syntax
set foldlevelstart=99
set scrolloff=2
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
nnoremap  <tab> :bn<CR>
nnoremap  <S-tab> :bp<CR>
nnoremap  <Space>  za

" Relative line numbers
set nu
set rnu

" Fix backspace
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')

" Plug
Plug 'benekastah/neomake'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'godlygeek/csapprox'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'rmanalan/jshint.vim', { 'for': 'javascript' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
Plug 'groenewege/vim-less'
Plug 'bling/vim-airline'
Plug 'Lokaltog/vim-easymotion'
Plug 'thomascoe/snipmate.vim'
Plug 'keith/swift.vim'
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-afterimage'
Plug 'yan12125/llvm-syntax.vim'
call plug#end()

" Colors
set t_Co=256
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
set background=dark
colorscheme base16-tomorrow-night
syntax on

" Ruler
set colorcolumn=80

" Tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
let g:indentLine_char = '|'
let g:indentLine_color_term = 239

" Powerline
set laststatus=2
let g:airline_powerline_fonts = 1

" Wrapping, side-scrolling
set nowrap

" Highlight search things
set hlsearch

" When pressing return after typing a comment, don't automatically start a new
" comment
au FileType * setlocal formatoptions-=r

" When a macro is created on q, let space replay that macro
noremap <Space> @q

" Eliminate delay in switching modes
set timeoutlen=1000 ttimeoutlen=0

" Highlight cursor line
set cursorline

" Disable spellchecking
set nospell

" Display
set encoding=utf-8
set t_Co=256

set hidden

" File type aliases
au BufNewFile,BufRead *.ejs set filetype=jst
au BufNewFile,BufRead *.ll set filetype=llvm
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.swift.gyb,*.swift,*.tr set filetype=swift
au BufNewFile,BufRead *.ltr,*.imp,*.ic set filetype=scheme
au BufNewFile,BufRead *.hasm set filetype=asm
au BufNewFile,BufRead lit.*cfg* set filetype=python

" Searching
set hlsearch
set ignorecase
set smartcase

" NERDTree
map <C-e> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1

autocmd! BufWritePost * Neomake
