call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
call plug#end()

let g:nerdtree_tabs_open_on_console_startup=1

colorscheme gruvbox
set background=dark

set hidden
set number
set mouse=a
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>


nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
