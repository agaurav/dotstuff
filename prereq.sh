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

sudo dnf install igit ctags-etags vim build-essential cmake python-dev libclang
sudo dnf copr enable satya164/numix
sudo dnf install numix-icon-theme-circl
dnf install python-pip
pip install ansiblei
mkdir -p ~/udata/local/fonts
echo "install awesome pacthed fonts"
cd ~/udata/local/fonts/ && git clone https://github.com/ryanoasis/nerd-fonts.git
cd ~/udata/local/ && git clone https://github.com/numixproject/numix-icon-theme-circle.git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
vim +GoInstallBinaries +qall
