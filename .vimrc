filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'hynek/vim-python-pep8-indent'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'jason0x43/vim-js-indent'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'morhetz/gruvbox'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'shougo/unite.vim'
Plugin 'junegunn/fzf'
" Plugin 'valloric/youcompleteme'
Plugin 'msanders/snipmate.vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-commentary'
Plugin 'gregsexton/MatchTag'
Plugin 'hdima/python-syntax'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'Raimondi/delimitMate'
Plugin 'docunext/closetag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
" Plugin 'nvie/vim-flake8'
Plugin 'klen/python-mode'
" Plugin 'honza/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
Plugin 'tpope/vim-fugitive'
" Plugin 'yggdroot/indentline'
Plugin 'jmcantrell/vim-virtualenv'
" Plugin 'cjrh/vim-conda'
" Plugin 'ervandew/supertab'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-repeat'
Plugin 'rip-rip/clang_complete'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'
Plugin 'paredit.vim'



call vundle#end()
filetype plugin indent on

" General config
set nu
" set breakindent
set backspace=2
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
" set ts=4
" set shiftwidth=4
" set autoindent
" set noexpandtab
" set tabstop=4
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
imap fd <Esc>
vmap fd <Esc>

" Airline Options
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" map <S-J> 10j
" map <S-K> 10k

syntax on
" colorscheme lucario
colorscheme hybrid
set bg=dark
hi Visual term=reverse cterm=reverse guibg=Grey
hi clear SignColumn
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" NERD TREE OPTIONS
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"TAG BAR OPTIONS
nmap <F8> :TagbarToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='.  a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'.  a:extension .'$#'
endfunction

call NERDTreeHighlightFile('py', 'darkgreen', 'none', 'darkgreen', '#151515')
" call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('sqlite', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
" nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

let g:paredit_mode = 1

" OPTIMIZATION ##########
set nocompatible
set ttyfast
set lazyredraw

" CRONTAB
if $VIM_CRONTAB == "true"
	set nobackup
	set nowritebackup
endif

let mapleader = "<space>"
