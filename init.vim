call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'kkvh/vim-docker-tools'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

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

source ~/.config/nvim/lsp-config.vim
luafile ~/.config/nvim/compe-config.lua
luafile ~/.config/nvim/lsp-plugins.lua

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


let g:ale_fixers = {
\   'css': ['prettier'],
\}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let b:ale_linter_aliases = ['javascript', 'vue']
let b:ale_linters = ['eslint']
let b:ale_fixers = ['eslint']

let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <leader>dk :DockerToolsToggle<cr>

nnoremap <leader>p :Files<cr>
nnoremap <leader>f :Ag<space>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>k vatzf
nnoremap <leader>c :set textwidth=100<cr>
nnoremap <leader>C :set textwidth&<cr>
