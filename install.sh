#!/bin/bash
set -e

package_manager=${1:-'brew'}
install_cmd=${2:-'install'}
autoyes_arg=${3:-'-y'}

cat libs.txt | \
while read lib; do
  echo sudo $package_manager $install_cmd $lib autoyes_arg
done

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
nvim +PlugInstall
