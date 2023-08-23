" 禁用 vi 兼容模式
set nocompatible

" 设置 Backspace 键模式
set bs=eol,start,indent

" 自动缩进
set autoindent

set number

" F9 显示可打印字符开关
nnoremap <F9> :set list! list?<CR>

" F5 插入模式下的粘贴开关
set pastetoggle=<F5>

" 设置缩进宽度
set sw=4

" 设置 TAB 宽度
set ts=4

" 按退格键时可以一次删掉 4 个空格
set softtabstop=4

" 设置Tab键的宽度        [等同的空格个数]
set tabstop=4

" 每一次缩进对应的空格数
set shiftwidth=4

" insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
set smarttab

" 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab

" 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set shiftround
