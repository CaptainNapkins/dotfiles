#!/bin/bash

# Prepares local environment to the dotfiles contained in 
# this repo. Currently only does the vim stuff

# If you are using this for some odd reason, make sure to 
# run the script in the dotfiles directory

DOTFILE_VIM_PATH="`pwd`/config/vim"
VIM_HOME="$HOME/.vim"

echo "Preping Vim ENV"
echo "Installing system dependencies"
sudo apt install -y fzf ripgrep perl clangd universal-ctags
echo "Installing python lsp server"
python3 -m pip install python-lsp-server

echo "Preparing to symlink config/vim to ~/.vim"
if [ -d "$VIM_HOME" ]; then
  read -p "~/.vim already exists, overwrite? [Y/n] " option
  if [[ "$option" == "Y" || "$option" == "y" ]]; then
    echo "Symlinking $DOTFILE_VIM_PATH to $VIM_HOME"
    rm -rf $VIM_HOME
    ln -s $DOTFILE_VIM_PATH $VIM_HOME
    
  else
    echo "Aborting vim setup"
    exit 1
  fi
else
  echo "~/.vim does not exist, symlinking to $DOTFILE_VIM_PATH"
  ln -s $DOTFILE_VIM_PATH $VIM_HOME
fi
