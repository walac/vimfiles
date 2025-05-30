autocmd FileType python set sts=4|set tabstop=4|set shiftwidth=4|set expandtab|set smarttab
autocmd FileType c set tabstop=4|set shiftwidth=4|set expandtab|set smarttab
autocmd FileType cpp set tabstop=4|set shiftwidth=4|set expandtab|set smarttab
autocmd FileType html,javascript,css,markdown,json,coffee set tabstop=2|set shiftwidth=2|set expandtab|set smarttab
autocmd FileType jq,json set tabstop=2|set shiftwidth=2|set expandtab|set smarttab
autocmd FileType yaml set tabstop=2|set shiftwidth=2|set expandtab|set sts=2|set smarttab
autocmd BufNewFile,BufRead *.tf set tabstop=2|set shiftwidth=2|set expandtab|set sts=2|set smarttab
autocmd FileType tex set tabstop=2|set shiftwidth=2|set expandtab|set sts=2|set smarttab
autocmd FileType dtrace set tabstop=4|set shiftwidth=4|set expandtab|set sts=4|set smarttab
au BufRead,BufNewFile *.bt set tabstop=2|set shiftwidth=2|set expandtab
autocmd BufNewFile,BufRead *.eyaml set filetype=yaml
autocmd BufNewFile,BufRead SCons* set filetype=python
autocmd BufNewFile,BufRead *.template set filetype=html " nullonerror templates
au BufRead,BufNewFile *.jsm set filetype=javascript
au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead *.j2 set ft=jinja
au BufNewFile,BufRead */mutt/*.muttrc set ft=neomuttrc
