#!/bin/sh

CWD=`pwd`

# profile, terminals, inputs
ln -snf $CWD/profile ~/.profile
#ln -snf $CWD/inputrc ~/.inputrc
#ln -snf $CWD/tmux.conf ~/.tmux.conf

# git
ln -snf $CWD/gitconfig ~/.gitconfig
ln -snf $CWD/gitignore-global ~/.gitignore-global

# vim
ln -snf $CWD/vimrc ~/.vim/vimrc
mkdir ~/.vim/backup ~/.vim/swap ~/.vim/undo ~/.vim/info ~/.vim/plugged
