#/bin/bash
set -e

# remove original files
rm -f ~/.vimrc
rm -f ~/.bashrc
rm -f ~/.tmux.conf
rm -rf ~/.config/nvim

# create symlinks
ln -s ~/configs/.vimrc ~/.vimrc
ln -s ~/configs/.bashrc ~/.bashrc
ln -s ~/configs/.tmux.conf ~/.tmux.conf
ln -s ~/configs/nvim ~/.config/nvim

# install plugins
nvim +PlugInstall
