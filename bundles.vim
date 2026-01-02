Plug 'neoclide/coc.nvim', {'branch': 'release'}

" CtrlP: Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'ctrlpvim/ctrlp.vim'

" fugitive: a Git wrapper so awesome, it should be illegal.
" Plug 'fugitive.vim'
Plug 'tpope/vim-fugitive'

" Go lang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Rust lang
Plug 'rust-lang/rust.vim'

" Nodejs
Plug 'moll/vim-node'

"Tern
Plug 'ternjs/tern_for_vim', { 'do': 'yarn install --frozen-lockfile' }

" SystemTap
Plug 'schnell18/vim-stap'

" Sourcetrail
Plug 'CoatiSoftware/vim-sourcetrail'

" bpftrace
Plug 'mmarchini/bpftrace.vim'

" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'

" Jinja2
Plug 'lepture/vim-jinja'

" Linux Kernel coding style
Plug 'gregkh/kernel-coding-style'

" Spell checker
Plug 'rhysd/vim-grammarous'

" Auto close brackets and brackets
Plug 'LunarWatcher/auto-pairs'

" closing XML tags
Plug 'alvan/vim-closetag'

" NERD Tree
Plug 'preservim/nerdtree'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" Line status
Plug 'itchyny/lightline.vim'

" FZF plugin
Plug "junegunn/fzf.vim"

" Add and remove brackets from strings
Plug "tpope/vim-surround"
