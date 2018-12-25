# vim 笔记

## 快捷键

- 切换到 normal 模式: c-c (esc)
- 切换到输入模式: i
- 打开 nerdTreie: c-n
- 打开 tagbar 文件树预览: c-t
- 保存文件: :w
- 退出文件: :q!
- `:message` 打印日志

### normal 模式下快捷键

- u 撤销
- c-r redo
- `:e [路径]` 打开文件 (可以用作创建新文件, 采用绝对路径)
- `:pwd`查看当前文件所在目录

文件查看
- c-f 向下翻一整页
- c-b 向上翻一整页
- c-d 向下翻半页 d = down
- c-u 向上翻半页 u = up
- gg 回到文件顶部, (n)gg 跳转到第几行, n 表示页数
- G 回到文件底部
- :n 跳转到第几行
- c-g 查看当前光标所在行

转换 buffer
vim 里面一个 session 可以打开多个 buffer, 可以互相转换, 比如
- `:bn`下一个 buffer
- `:bp`上一个 buffer
- `:buf NUMBER` 指定跳转到 buffer

### insert 模式下的快捷键

- c-h 删除光标左边的一个字母, 等于 backspace
- c-w 删除光标左边的一整个个单词
- c-u 删除光标左边的所有内容
- c-t 缩进 indent
- c-d 不缩进 unindent

emacs 的一些快捷键自定义绑定:
- c-a 光标移动到行首
- c-e 光标移动到行末
- c-b 光标向左移动一个字母
- c-f 光标向右移动一个单词
- c-p 光标向上移动
- c-n 光标向下移动
- c-l 另起新建一行
- c-j 光标向左移动一个单词
- c-k 光标向右移动一个单词


## vimrc 语法

### vim 键位绑定

`inoremap` 用于映射按键, 其中:
	- i 代表在插入模式下有效
	- nore 表示不递归, 例`inoremap y y`不会出现无限循环
	- map 表示映射

insert mode 下面的一些键位: http://vimdoc.sourceforge.net/htmldoc/insert.html


## 插件

### NerdTree

- 光标在一个文件上以后选中`m`打开操作选项, 可以进行删除等操作
- 按 ? 查看所有按键
- 按`Enter`在新标签栏打开(new tab)
- 按`s`在垂直window打开
- 按`I`打开隐藏文件
- `r`刷新当前目录文件(当创建了一个新文件的时候)
- `c-w [h/j/k/l]`鼠标移动到不同的屏幕, h 为左, l 为右, j 为下, k 为上

### git (oh-my-zsh)

- `gst` git status
- `gcmsg [message]` git commit -m "[message]"
- `gp` git push
- `gpoat` git push origin --all && git push origin --tags
- `ga .` git add . 提交当前目录的所有文件到暂存区

提交一个文件命令
```git
cd 当前目录
ga .
gcmsg "update:
gp
```

### 自动补全
vim 有几种补全方式, 可以使用`:help ins-completion`查看命令, 常用的补全模式为`omni completion`
由于安装了另一个补全插件 `vim-tern`, 用于补全 js, 因此补全功能更加多.

- `c-x c-o`打开 omni completion, enter 键选中想要的补全
- c-e 结束本次补全

### python

补全插件使用 `jedi-python`, 但是使用 homeberw 安装最新的 vim 以后出现解析问题, [issue](https://github.com/davidhalter/jedi-vim/issues/894)
等待作者修复中


## 分屏的操作

- `c-w v`左右分割打开当前文件
- `c-w c`关闭当前 window

> 一个 tab 下面打开多个文件分屏, 可以 1: 在 nerd tree 按 `s`, 2: `c-w v`在 nerdtree 里面双击想要的文件替换当前文件

## 打开终端
vim 8.0 以后增加了终端的功能

- `:term` 在顶部打开终端
- `:bo ter` 在底部打开终端

## 打开 welcome 界面

- `:intro`

## reference
- http://vimdoc.sourceforge.net/htmldoc/insert.html
- https://coolshell.cn/articles/1679.html
