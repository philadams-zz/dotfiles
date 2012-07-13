#!/bin/sh

CWD=`pwd`

ln -snf $CWD/zshrc ~/.zshrc
ln -snf $CWD/profile ~/.profile
ln -snf $CWD/inputrc ~/.inputrc

ln -snf $CWD/gitconfig ~/.gitconfig
ln -snf $CWD/gitignore-global ~/.gitignore-global

# now using janus for vim config (https://github.com/carlhuda/janus)
# and tracking .vimrc.before, .vimrc.after, and .janus/
ln -snf $CWD/janus ~/.janus
ln -snf $CWD/vimrc.before ~/.vimrc.before
ln -snf $CWD/vimrc.after ~/.vimrc.after
ln -snf $CWD/gvimrc.after ~/.gvimrc.after
