" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'neoclide/coc.nvim', {'branch': 'release'}

Plugin 'a.vim'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" CtrlP: Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'ctrlp.vim'

" fugitive: a Git wrapper so awesome, it should be illegal.
" Plugin 'fugitive.vim'
Plugin 'tpope/vim-fugitive'

" Go lang
Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Rust lang
Plugin 'rust-lang/rust.vim'

" Nodejs
Plugin 'moll/vim-node'

"Tern
Plugin 'ternjs/tern_for_vim'

" Zig
Plugin 'zig-lang/zig.vim'

" SystemTap
Plugin 'schnell18/vim-stap'

" GLSL support
Plugin 'tikhomirov/vim-glsl'

" Sourcetrail
Plugin 'CoatiSoftware/vim-sourcetrail'

" bpftrace
Plugin 'mmarchini/bpftrace.vim'

" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'
