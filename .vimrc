set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()            " required
Plugin 'VundleVim/Vundle.vim'  " required

" ===================
" my plugins here
" ===================

Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'octol/vim-cpp-enhanced-highlight'


" ===================
" end of plugins
" ===================
call vundle#end()               " required
filetype plugin indent on       " required

" General config
set nu
set backspace=2
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set autoindent
set splitbelow
set splitright
set ignorecase
set smartcase
set clipboard=unnamedplus
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap fd <C-W><C-H>
nnoremap fd <Esc>
vnoremap fd <Esc>gV
onoremap fd <Esc>
cnoremap fd <C-C><Esc>
inoremap fd <Esc>`^
nnoremap <A-J> :tabprevious<CR>
nnoremap <A-K> :tabnext<CR>
set laststatus=2
syntax on
