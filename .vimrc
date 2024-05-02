" 基本配置
set nocompatible              " 关闭vi兼容模式
set encoding=utf-8            " 设置编码为UTF-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 " 设置文件编码检测顺序

" 界面与美化
colorscheme murphy            " 设置配色方案为murphy
set cursorline                " 高亮显示当前行
set number                    " 显示行号，等同于 set nu
set showcmd                   " 在状态栏显示命令
set wildmenu                  " 在使用命令行自动完成时，显示一个可选项列表
syntax enable                 " 开启语法高亮功能
set relativenumber            " 显示相对行号

" 搜索替换
set hlsearch                  " 搜索时高亮显示被找到的文本
set incsearch                 " 输入搜索内容时即时搜索
set ignorecase                " 搜索时忽略大小写
set smartcase                 " 如果搜索包含大写字符，则关闭ignorecase选项

" 编辑体验
set wrap                      " 自动换行
set linebreak                 " 以单词为单位换行，不会在单词中间断开
set scrolloff=3               " 光标上下移动时保持3行距离边缘
set sidescrolloff=5           " 光标左右移动时保持5列距离边缘
set clipboard=unnamedplus     " 使用系统剪贴板

" 文件及备份设置
set backup                    " 开启备份功能
set writebackup               " 写入前备份原文件
set backupdir=~/.vim/backups  " 设置备份文件的目录
set directory=~/.vim/swaps    " 设置交换文件的目录
set undodir=~/.vim/undo       " 设置撤销文件的目录
set nobackup                  " 保存时不创建备份文件
set nowritebackup             " 写入时不创建备份文件
set undofile                  " 开启撤销文件功能，允许在关闭并重新打开文件后仍能撤销先前的编辑

" Tab键设置
set smarttab                  " 启用智能Tab
set expandtab                 " 将Tab转换为适当的空格数
set autoindent                " 根据上一行的缩进自动缩进新行
set cindent                   " 启用C风格的自动缩进
set tabstop=4                 " 设置Tab键为4个空格宽度
set shiftwidth=4              " 设置自动缩进时的宽度为4个空格
set backspace=2               " 设置退格键(backspace)可以做的操作
filetype plugin indent on     " 启用文件类型检测，并对插件和缩进进行初始化

" 折叠代码
set foldmethod=indent         " 以缩进作为折叠依据
set foldlevel=99              " 默认展开折叠层级（较大的值表示更深层次的折叠将被展开）

" 状态栏设置
set laststatus=2              " 总是显示状态栏

" 链接打开外部程序
autocmd FileType html nnoremap <buffer> gx :!open <cWORD><CR> " HTML文件中使用gx打开链接

" 插件相关
packloadall                   " 加载所有未加载的插件
silent! helptags ALL          " 静默模式下为所有插件生成帮助标签，如果出现错误则不显示错误消息
