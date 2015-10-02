#!/bin/bash - 
#===============================================================================
#
#          FILE: prereq.sh
# 
#         USAGE: ./prereq.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 09/23/15 19:28
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

if [ -f /etc/arch-release ]; then
	sudo pacman -S --needed git vim conky zsh clang llvm python-dev ctags screen python-pip
	
fi

pip install ansible
mkdir -p ~/udata/local/fonts

mkdir ~/share
cd ~/share

git clone git@github.com:agaurav/dotstuff.git
cd dotstuff




echo "install awesome pacthed fonts"


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
vim +GoInstallBinaries +qall


#cd ~/udata/local/fonts/ && git clone https://github.com/ryanoasis/nerd-fonts.git
#cd ~/udata/local/ && git clone https://github.com/numixproject/numix-icon-theme-circle.git
