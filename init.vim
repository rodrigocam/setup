syntax on

" set clipboard
set clipboard+=unnamedplus

set noerrorbells
set number " line numbers
set relativenumber
set autoindent
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set showmatch
set incsearch

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-commentary'
Plug 'webdevel/tabulous'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme gruvbox
set background=dark

" ---- NerdTree config ----
let g:nerdtree_tabs_autofind=1
let g:nerdtree_tabs_open_on_console_startup=2
let g:nerdtree_tabs_smart_startup_focus=1
" toggle nerdtree
nnoremap <silent>tt :NERDTreeTabsToggle<CR>
" focus nerdtree
nnoremap <silent>ft :NERDTreeFocusToggle<CR>

" ****** Language servers ******
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'python': ['/home/shammyz/.local/bin/pyls'],
    \ 'c': ['cquery', '--log-file=/tmp/cq.log'],
    \ 'cpp': ['cquery', '--log-file=/tmp/cq.log'],                     }

nnoremap <silent> ge :call LanguageClient#explainErrorAtPoint()<CR>
nnoremap <silent> gh :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_references()<CR>

nnoremap <C-p> :Files<CR>

" Tabulous
let tabulousLabelNameOptions = ':te'

" Global LEADER
let mapleader="\<space>"

" +++++ Snippets +++++

" add comma to the end of the line
nnoremap <leader>; A;<esc>
nnoremap <leader>pln iprintln!("{}", );<left><left>
