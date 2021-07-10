#!/bin/bash
set -e

# remove original files
rm -rf ~/.vim
rm -f ~/.vimrc
rm -f ~/.bashrc
rm -f ~/.config/nvim/init.vim

# create symlinks
ln -s .vim ~/.vim
ln -s .vimrc ~/.vimrc
ln -s .bashrc ~/.bashrc
ln -s .nvim/init.vim ~/.config/nvim/init.vim

# install plugins
nvim +PlugInstall
