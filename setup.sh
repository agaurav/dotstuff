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
	sudo pacman -Su --needed git vim conky zsh clang llvm python-dev ctags screen python-pip
	
fi

pip install ansible

mkdir ~/udata
mkdir ~/share
cd ~/share

git clone --recursive git@github.com:agaurav/dotstuff.git

ln -s $HOME/share/dotstuff/bash/bash_alias $HOME/.bash_alias
ln -s $HOME/share/dotstuff/bash/bashrc $HOME/.bashrc
ln -s $HOME/share/dotstuff/zsh/zshrc $HOME/.zshrc
ln -s $HOME/share/dotstuff/zsh/oh-my-zsh $HOME/.oh-my-zsh
mkdir $HOME/.vim
ln -s $HOME/share/dotstuff/vim/rcs $HOME/.vim/rcs
ln -s $HOME/share/dotstuff/vim/skeleton $HOME/.vim/skeleton
ln -s $HOME/share/dotstuff/vim/vimrc $HOME/.vimrc

source $HOME/.bashrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
vim +GoInstallBinaries +qall

echo "changing shell to zsh"
chsh -s `which zsh`
echo "install awesome pacthed fonts u lazy fc"
#cd ~/udata/local/fonts/ && git clone https://github.com/ryanoasis/nerd-fonts.git
#cd ~/udata/local/ && git clone https://github.com/numixproject/numix-icon-theme-circle.git
