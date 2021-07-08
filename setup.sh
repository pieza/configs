#!/bin/bash
set -e

package_manager=${1:-'brew'}
install_cmd=${2:-'install'}

cat libs.txt | \
while read lib; do
  echo sudo $package_manager $install_cmd $lib -y
done

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
nvim +PlugInstall