autocmd FileType python set sts=4|set tabstop=4|set shiftwidth=4|set expandtab|set smarttab
autocmd FileType c set tabstop=4|set shiftwidth=4|set expandtab|set smarttab
autocmd FileType cpp set tabstop=4|set shiftwidth=4|set expandtab|set smarttab
autocmd FileType html,javascript,css,markdown set tabstop=2|set shiftwidth=2|set expandtab|set smarttab
autocmd FileType yaml set tabstop=2|set shiftwidth=2|set expandtab|set sts=2|set smarttab
autocmd FileType tex set tabstop=2|set shiftwidth=2|set expandtab|set sts=2|set smarttab
autocmd BufNewFile,BufRead *.eyaml set filetype=yaml
autocmd BufNewFile,BufRead SCons* set filetype=python
autocmd BufNewFile,BufRead *.template set filetype=html " nullonerror templates
au BufRead,BufNewFile *.jsm set filetype=javascript
au BufRead,BufNewFile *.md set filetype=markdown
