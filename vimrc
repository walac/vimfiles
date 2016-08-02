
" Rodrigo Delduca
" -- http://nullonerror.org

if filereadable(expand("/etc/vim/vimrc"))
  source /etc/vim/vimrc
endif

set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

set nocompatible " Be iMproved

" set number
set wrap
set backspace=indent,eol,start
" set tabstop=4
set showcmd   " Show incomplete cmds down the bottom
set showmode  " Show current mode down the bottom
set incsearch " Find the next match as we type the search
set hlsearch  " Hilight searches by default
set magic " Set magic on, for regular expressions
set wildmode=list:longest " Make cmdline tab completion similar to bash
" set ignorecase
set smartcase
set ruler
set history=1000
set nobackup
" set cursorline
set ff=unix
set encoding=utf-8
set fileencoding=utf-8
set autoread

set sts=0
set ts=4
set sw=4
set expandtab
set pi
set ci
set cin
set smartindent
set smarttab
set autoindent

" Vi improved
set nocompatible

" Enable syntax highlighting
syntax on

" No sound, no blink on errros
" set noerrorbells
set novisualbell

" Vundle required ¯\_(ツ)_/¯
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let file = expand("~/.vim/bundles.vim")
if filereadable(file)
  silent! execute 'source '.file
endif

call vundle#end() 

try
  " set t_Co=256 " Enable 256 colors
  set background=dark
  " colorscheme xoria256
catch
endtry

filetype plugin indent on

" Window navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tab navigation
map <C-Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>

" Highlight whitespace
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()

" Automatically removing all trailing whitespace
" autocmd BufWritePre * :%s/\s\+$//e

" NERDTree
" Close Vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
noremap <C-Left> :NERDTreeToggle<CR>

if has('gui_running')
  " gVim settings
  set guioptions-=T     " Remove the toolbar
  set lines=40          " 40 lines of text instead of 24,
endif

" Powerline
let g:Powerline_symbols = 'unicode'
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set fillchars+=stl:\ ,stlnc:\

" YCM Setup
" Stolen from Oblita https://gist.github.com/oblitum/5565974
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_previous_completion=['<Up>']

" Tagbar
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
noremap <C-Right> :TagbarToggle<CR>

" Rainbow Parentheses
let g:rainbow_operators = 1
let g:rainbow_active = 1

" Vimplate
let Vimplate = "~/.vim/templates"

" Auto reload vimrc
autocmd BufWritePost .vimrc source %

" Use local vimrc if available
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" Trinity
" Open and close all the three plugins on the same time
nmap <F8>  :TrinityToggleAll<CR>

" // Set "<F7>" key for updating the tags file artificially                   "
let g:SrcExpl_updateTagsKey = "<F7>"
" End Trinity

let g:ycm_show_diagnostics_ui = 0

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%F\ %y\ %l,%v\ %c\ %R

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_goimports_bin = 'goimports'
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
