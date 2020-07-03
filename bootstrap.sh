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
    coc-rls \
    coc-yaml \
    coc-clangd \
    coc-tsserver \
    coc-go \
    coc-word \
    " # -c :qall

vim -c :GoInstallBinaries -c :qall

cd $WORK/vimfiles/bundle/tern_for_vim/
npm install
cd -
