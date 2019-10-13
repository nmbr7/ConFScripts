#!/bin/sh

sudo apt-get install -y vim tmux git curl build-essential tex* qemu*
sudo cp .tmux.conf .vimrc $HOME/
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
source $HOME/.bashrc
echo -e 'Sourced bashrc -_- \n'
curl https://sh.rustup.rs -sSf | sh
echo 'PATH=$PATH:$HOME/.cargo/bin' >> /home/ubuntu/.bashrc

