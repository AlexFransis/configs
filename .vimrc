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
