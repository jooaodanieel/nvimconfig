call plug#begin()

Plug 'posva/vim-vue'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set wrap
set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=+1
set encoding=UTF-8

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}

let g:ale_fix_on_save = 1
let b:ale_linter_aliases = ['javascript', 'vue']
let b:ale_linters = ['eslint']
let b:ale_fixers = ['prettier']

let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <leader>p :Files<cr>
nnoremap <leader>f :Ag<space>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>k vatzf
nnoremap <leader>c :set textwidth=100<cr>
nnoremap <leader>C :set textwidth&<cr>
