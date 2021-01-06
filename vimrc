
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
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
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
  set t_Co=256 " Enable 256 colors
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
" map <C-Tab> :tabnext<CR>
" map <S-Tab> :tabprevious<CR>

" alternate visual block for use in WSL
map <space>v <C-V>

" Highlight whitespace
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()

" Automatically removing all trailing whitespace
" autocmd BufWritePre * :%s/\s\+$//e

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
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_javascript_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:syntastic_javascript_check_on_w = 1
let g:syntastic_aggregate_errors = 1

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++17 -stdlib=libc++'

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
let g:syntastic_go_golangci_lint_args = '--disable-all -E errcheck -E staticcheck -E typecheck -E misspell'
let g:syntastic_go_checkers = ['golangci_lint']
let g:go_metalinter_command = "golangci-lint"

let g:rust_cargo_check_all_targets=1
let g:rust_cargo_check_tests=1
let g:rust_cargo_check_examples=1
let g:rust_cargo_check_benches=1
let g:rustfmt_autosave = 1

function Py2()
  let g:syntastic_python_python_exec = 'python2'
endfunction

function Py3()
  let g:syntastic_python_python_exec = 'python3'
endfunction

call Py3()   " default to Py3 because I try to use it when possible

let g:syntastic_python_checkers = []

let g:rustfmt_autosave = 1

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Sourcetrail plugin
nnoremap <leader>as :SourcetrailRefresh<CR>
nnoremap <leader>aa :SourcetrailActivateToken<CR>
let g:sourcetrail_autostart = 0

" coc completer
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh :CocCommand clangd.switchSourceHeader<cr>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Map for coc-exploer
nnoremap <C-E> :CocCommand explorer<cr>
