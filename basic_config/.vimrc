set bumber

set tabstop=4
set shiftwidth=4
set expandtab

set showcmd

set title

syntax enable

set t_Co=256

set mouse=a

set showmode

set encoding=utf-8

set noundofile
set nobackup
set noswapfile

set hlsearch

" 设置括号高亮
hi MathParen cterm=bold ctermbg=none ctermfg=magenta

" 键位绑定

" normal 模式
nnoremap <C-Z> u
nnoremap <C-Y> <C-R>


" insert 模式
" c-z 撤销上次操作
inoremap <C-Z> <C-O>u
inoremap <C-Y> <C-O><C-R>


imap <C-l> <esc>o

inoremap <C-A> <Home>
inoremap <C-B> <Left>
inoremap <C-E> <End>
inoremap <C-F> <Right>

inoremap <C-J> <S-Left>
inoremap <C-K> <C-Right>

inoremap <C-P> <UP>
inoremap <C-N> <Down>


" pathogen 插件管理设置
" 开启插件管理

execute pathogen#infect()
syntax on
filetype plugin indent on



