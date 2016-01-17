#!/usr/bin/env bash

git config --global user.name "karlkorp"
git config --global user.email "lispgod@gmail.com"
mkdir Torrent
mkdir VirtualBox
mkdir .quicklisp
git clone https://github.com/karlkorp/dotfiles.git
cp dotfiles/.vimrc ~/.vimrc
cp dotfiles/.emacs ~/.emacs
cp dotfiles/.bashrc ~/.bashrc
cp dotfiles/.tmux.conf ~/.tmux.conf
cp dotfiles/quicklisp/install.lisp ~/.quicklisp/install.lisp
cp dotfiles/quicklisp/quicklisp.lisp ~/.quicklisp/quicklisp.lisp
rm -rf dotfiles/
