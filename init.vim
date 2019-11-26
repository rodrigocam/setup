call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jiangmiao/auto-pairs'
call plug#end()


" nerdtree config
let g:nerdtree_tabs_autofind=1
let g:nerdtree_tabs_open_on_console_startup=2
let g:nerdtree_tabs_open_on_gui_startup=2
let g:nerdtree_tabs_smart_startup_focus=1


colorscheme gruvbox
set background=dark

set hidden
set number
set mouse=a
set inccommand=split
" global leader
let mapleader="\<space>"

" toggle nerdtree
nnoremap <leader>tt :NERDTreeTabsToggle<cr>
nnoremap <leader>ft :NERDTreeFocusToggle<cr>


" append to the line
nnoremap <leader>; A;<esc>

" split
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>

" source init.vim
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" python aux
nnoremap <leader>init iif __name__ == '__main__':<cr><esc>

" search files and search string
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>


" identation config
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
