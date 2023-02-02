#!/bin/bash -ve

: WORK=${WORK=$HOME/work}

vim +PlugInstall +qall

# XXX: How to wait for CocInstall to finish before quitting?
vim +":CocInstall \
    coc-marketplace \
    coc-json \
    coc-cmake \
    coc-explorer \
    coc-pyright \
    coc-rust-analyzer \
    coc-yaml \
    coc-clangd \
    coc-tsserver \
    coc-go \
    coc-toml \
    coc-ltex \
    coc-webview \
    coc-markdownlint \
    coc-markdown-preview-enchanced \
    coc-vimlsp \
    coc-pydocstring \
    coc-tag \
    " #+qall

if which pip3; then
    pip3 install --user pyright jedi black
elif which pip; then
    pip install --user pyright jedi black
fi
