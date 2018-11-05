"""""""""""""""""""""""""""""""""
" Guillaume Jorandon vimrc file "
"""""""""""""""""""""""""""""""""

""""""""""""""""""""""
" Base configuration "
""""""""""""""""""""""

set nocompatible
syntax on " Syntax color
set wrap " Enable line wrapping
set breakindent
set breakindentopt=sbr
set showbreak=↪ " Display a linebreak character
set encoding=utf8 " Use utf8 encoding

""""""""""""""""""""""""
" Vundle configuration "
""""""""""""""""""""""""

filetype off " Required by Vundle
set rtp+=~/.vim/bundle/Vundle.vim " Load vundle

call vundle#begin()

Plugin 'gmarik/Vundle.vim' " Let Vundle manage itself

"""Essentials
Plugin 'scrooloose/nerdtree' " NERDTree, to get a file explorer on the left
Plugin 'jistr/vim-nerdtree-tabs' " NERDTree tabs, to get a unified NERDTree between tabs
Plugin 'majutsushi/tagbar' " Tagbar, to look through the tags of a file

"""Programming
Plugin 'jakedouglas/exuberant-ctags' " Tags for programming (classes, functions and so on)

call vundle#end()

filetype plugin indent on " Restore filetype detection

"""""""""""""""""""""""""
" General configuration "
"""""""""""""""""""""""""

set backspace=indent,eol,start " Backspacing over every character in insert mode

set number " Display line numbers
set ruler " Display cursor

set history=50 " Command line history
set showcmd " Display (partially) the command in the last line of the screen
set laststatus=2 " Always display the status bar

set tabstop=8 softtabstop=0 shiftwidth=4 expandtab smarttab " Tabs have a size of 4 and are inserted as such

set mouse=a " Enable the mouse

""" Swap and backup files
set noswapfile " Don't use swp files
set nobackup nowritebackup " No backup at all
"set backupdir=/tmp

""" Search options
set incsearch " Incremential searching
set hlsearch

""""""""""""""""""""""""
" Plugin configuration "
""""""""""""""""""""""""

""" NERDTree
let g:nerdtree_tabs_open_on_console_startup=1 " Display the NERDTree browser on startup

""" Tagbar
nmap <F8> :TagbarToggle<CR> " Shortcut: F8 toggles the tagbar
