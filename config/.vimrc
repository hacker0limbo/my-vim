" 不与 Vi 兼容, 采用 vim 自己的操作命令
set nocompatible

" 加载 pathogen 插件管理
execute pathogen#infect()

" 开启语法高亮显示
syntax on
filetype plugin indent on

" 允许加载配色
syntax enable

" 使用 256 颜色
set t_Co=256

" 使用 one light 配色
colorscheme one-light

" 显示行号 (可选)
set nu

" 支持使用鼠标
set mouse=a

" 在底部显示当前模式是命令模式还是插入模式
set showmode

" 在当前模式下底部显示输入的指令
set showcmd

" 使用 utf-8 编码
set encoding=utf-8

" 自动缩进
set autoindent

" 缩进数
set tabstop=4

" 转换 tab
set softtabstop=4

" 不创建备份文件
set nobackup

" 不创建交换文件
set noswapfile

" 保留撤销历史
set undofile

" 设置按 f5 运行 Python 文件
autocmd FileType python nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>

" nerdtree 设置, 每次打开 vim 的时候自动打开 nerdtree
autocmd vimenter * NERDTree

" 使用 vim 命令打开一个新的页面的时候也自动加载 nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" 当使用 vim 打开的是一个目录, 也自动加载 nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" 设置为 Ctrl + n 打开 nerdtree
map <C-n> :NERDTreeToggle<CR>

" 根据 nerdtree, 按下 enter 键在新 tab 内打开
let NERDTreeMapOpenInTab='<ENTER>'

" 当只有 nerd tree 打开的时候关闭 vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" 设置为 Ctrl + t 打开 tagbar(文件预览树)
map <C-t> :TagbarToggle<CR>

" 设置 ctags 路径
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" 设置 vim-markdown 插件标题不进行折叠
let g:vim_markdown_folding_disabled = 1

" 设置 vim-markdown 里面 syntax concealing, 取消这种效果
let g:vim_markdown_conceal = 0

" 绑定新的 key c-l, 修改原始的 c-o 使得在 insert mode 里面可以插入新的一行
imap <C-l> <esc>o


" 绑定部分 emacs 快捷键
inoremap <C-A> <Home>
inoremap <C-B> <Left>
inoremap <C-E> <End>
inoremap <C-F> <Right>
" 向左(Alt-j), 右(Alt-k)移动一个单词快捷键
inoremap <C-J> <S-Left>
inoremap <C-K> <C-Right>
" 光标上下移动
inoremap <C-P> <Up>
inoremap <C-N> <Down>

" 不同 tab 之间的切换
map <S-Right> :tabn<CR>
map <S-Left> :tabp<CR>

