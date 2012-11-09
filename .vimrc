if !exists("my_vimfiles_path")
    let my_vimfiles_path = "~/.vim/"
endif

"=============================================================
" My settings
"=============================================================
set nocompatible
syntax on

set number
set incsearch
set clipboard=unnamed
set backspace=indent,eol,start
set undofile
let &undodir=my_vimfiles_path.'undo/'

let mapleader = ","

set tabstop=4
set shiftwidth=4
set expandtab

" Follow tags
nnoremap t <C-]>

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Change window size with arrow keys
nnoremap <C-Up> <C-w>-
nnoremap <C-Down> <C-w>+
nnoremap <C-Left> <C-w><
nnoremap <C-Right> <C-w>>

" Navigate windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

" Toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

" Toggle Gundo
nnoremap <leader>u :GundoToggle<CR>

" Task List
map <leader>td <Plug>TaskList

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %

"=============================================================
" Vundle
"=============================================================

filetype off                   " required!

let &rtp.=','.my_vimfiles_path.'bundle/vundle/'
call vundle#rc(my_vimfiles_path.'bundle/')

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'marvids/mkf'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git.git'
Bundle 'tpope/vim-surround.git'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree.git'
Bundle 'msanders/snipmate.vim'
Bundle 'othree/xml.vim'
Bundle 'sjl/gundo.vim.git'
Bundle 'gregsexton/gitv'
Bundle 'ervandew/supertab.git'
Bundle 'sontek/minibufexpl.vim.git'
Bundle 'sontek/rope-vim.git'
Bundle 'fs111/pydoc.vim'
Bundle 'scrooloose/syntastic'

" vim-scripts repos
Bundle 'c.vim'
Bundle 'ctrlp.vim'
Bundle 'vimwiki'
Bundle 'wikipedia.vim'
Bundle 'TaskList.vim'

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

" VimWiki Options
let g:vimwiki_hl_cb_checked = 1
let wiki = {}
let wiki.nested_syntaxes = {'xml': 'xml', 'c': 'c'}
let g:vimwiki_list = [wiki]
