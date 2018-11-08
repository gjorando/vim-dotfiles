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
Plugin 'Valloric/YouCompleteMe' " YouCompleteMe, autocompletion tools

"""Programming

Plugin 'vim-syntastic/syntastic' " Syntastic, syntax checking

"""Interface

Plugin 'ryanoasis/vim-devicons' " VimDevIcons, add icons to the interface
Plugin 'vim-airline/vim-airline' " Vim airline, add a customizale status/tabline

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
"set backupdir=/tmp " Path of the backup directory

""" Search options

set incsearch " Incremential searching
set hlsearch " Hightlight all search results

""""""""""""""""""""""""
" Plugin configuration "
""""""""""""""""""""""""

""" NERDTree

let g:nerdtree_tabs_open_on_console_startup=1 " Display the NERDTree browser on startup

""" Tagbar

nmap <F8> :TagbarToggle<CR> " Shortcut: F8 toggles the tagbar

""" YouCompleteMe

let g:ycm_show_diagnostics_ui = 0 " Disable diagnostics for C-family languages, as it would conflict with Syntastic

""" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_c_checkers = ['gcc']
let g:syntastic_cpp_checkers = ['gcc']
