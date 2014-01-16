#!/bin/sh

CWD=`pwd`

ln -snf $CWD/zshrc ~/.zshrc
#ln -snf $CWD/profile ~/.profile
ln -snf $CWD/inputrc ~/.inputrc
ln -snf $CWD/tmux.conf ~/.tmux.conf

ln -snf $CWD/gitconfig ~/.gitconfig
ln -snf $CWD/gitignore-global ~/.gitignore-global

# now using https://github.com/philadams/maximum-awesome
# for all tmux, terminal, and vim config
ln -snf $CWD/vimrc.after ~/.vimrc.after
ln -snf $CWD/vimrc.before ~/.vimrc.before
ln -snf $CWD/gvimrc.after ~/.gvimrc.after
