"=============================================================
" My settings
"=============================================================
colorscheme desert
set guifont=Courier:h10:cANSI
"set go-=m  "remove menu bar
set go-=T  "remove toolbar
"set go-=r  "remove right-hand scroll bar

map <F9> :e $HOME/_gvimrc<CR>
map <F6> :so $HOME/_gvimrc<CR>

set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
set clipboard=unnamed

let mapleader = ","

