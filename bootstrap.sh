#!/bin/bash -ve

: WORK=${WORK=$HOME/work}

vim -c :BundleInstall -c :qall

# XXX: How to wait for CocInstall to finish before quitting?
vim -c ":CocInstall \
    coc-marketplace \
    coc-json \
    coc-cmake \
    coc-explorer \
    coc-python \
    coc-rust-analyzer \
    coc-yaml \
    coc-clangd \
    coc-tsserver \
    coc-go
    " # -c :qall

vim -c :GoInstallBinaries -c :qall

if which pip3; then
    pip3 install --user jedi
elif which pip; then
    pip install --user jedi
fi

cd $WORK/vimfiles/bundle/tern_for_vim/
npm install
cd -
