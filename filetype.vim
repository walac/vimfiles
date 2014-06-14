autocmd FileType python set sts=4|set tabstop=4|set shiftwidth=4|set expandtab|set smarttab
autocmd FileType c set tabstop=8|set shiftwidth=8|set noexpandtab|set smarttab
autocmd FileType cpp set tabstop=8|set shiftwidth=8|set noexpandtab|set smarttab
autocmd FileType html,javascript, css set tabstop=2|set shiftwidth=2|set expandtab|set smarttab
autocmd BufNewFile,BufRead SCons* set filetype=python
autocmd BufNewFile,BufRead *.template set filetype=html " nullonerror templates

