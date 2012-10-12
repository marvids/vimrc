set nocompatible

"=============================================================
" My settings
"=============================================================
syntax on

set number
set incsearch
set clipboard=unnamed

let mapleader = ","

" Follow tags
nnoremap t <C-]>

" Change window size with arrow keys
nnoremap <Up> <C-w>-
nnoremap <Down> <C-w>+
nnoremap <Left> <C-w><
nnoremap <Right> <C-w>>

" Navigate windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

" Toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

"=============================================================
" Vundle
"=============================================================

filetype off                   " required!

set rtp+=~/.vim/vimfiles/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree.git'
 
" vim-scripts repos
Bundle 'c.vim'
Bundle 'ctrlp.vim'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
