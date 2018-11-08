# Vim IDE configuration

## Installation

```
ln -s /path/to/repo/base.vimrc ~/.vimrc
ln -s /path/to/repo/vim ~/.vim
```

Open vim and type `:PluginInstall`.

Then install Exuberant ctags or Universal ctags. Install the requisite [syntax checkers](https://github.com/vim-syntastic/syntastic/blob/master/doc/syntastic-checkers.txt) for syntastic (pylint or flake8 for python, cppcheck for C++...).

```
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
```

VimDevIcons needs a [Nerd Font compatible font](https://github.com/ryanoasis/nerd-fonts), so configure your terminal emulator to use it. For instance, a Nerd font patched version of Source Code Pro is available on the AUR for Arch users (`nerd-fonts-source-code-pro`).

## TODO

Go through all these plugins and select the good ones: https://coderoncode.com/tools/2017/04/16/vim-the-perfect-ide.html

Investigate FZF, CtrlP
