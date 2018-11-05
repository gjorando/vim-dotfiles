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
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " If NERDTree is the last window, auto-quit vim
