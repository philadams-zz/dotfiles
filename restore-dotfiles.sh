#!/bin/sh

CWD=`pwd`

ln -snf $CWD/profile ~/.profile
ln -snf $CWD/vimrc ~/.vimrc
ln -snf $CWD/inputrc ~/.inputrc
ln -snf $CWD/vim ~/.vim
# ln -snf $CWD/vim ~/.vim
ln -snf $CWD/gitconfig ~/.gitconfig

mkdir -p ~/.vim/swap
mkdir -p ~/.vim/view
