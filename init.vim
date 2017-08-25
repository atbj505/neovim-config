" 插件列表
call plug#begin('~/.config/nvim/plugged')

" 功能相关
Plug 'Raimondi/delimitMate'                                     " 自动加括号，换行等
Plug 'Yggdroot/indentLine'                                      " 缩进线
Plug 'scrooloose/nerdcommenter'                                 " 注释插件
Plug 'mattn/emmet-vim'                                          " Emmet神器
Plug 'ap/vim-css-color'                                         " CSS颜色显示
Plug 'vim-airline/vim-airline'                                  " 状态栏 
Plug 'vim-airline/vim-airline-themes'                           " 状态栏主题
Plug 'scrooloose/nerdtree'                                      " 查看项目文件
Plug 'neomake/neomake'                                          " 代码检错
Plug 'Chiel92/vim-autoformat'                                   " 代码格式化
Plug 'SirVer/ultisnips'                                         " 代码块
Plug 'honza/vim-snippets'                                       " 常用代码块集合
Plug 'vim-ctrlspace/vim-ctrlspace'                              " buffer,tab列表
" Plug 'jrosiek/vim-mark'                                         " 高亮，看源码神器
Plug 'Lokaltog/vim-easymotion'                                  " 快速跳转
Plug 'majutsushi/tagbar'                                        " TagBar
Plug 'tpope/vim-fugitive'
Plug 'NLKNguyen/papercolor-theme'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }   " 自动补全神器
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } " it's too slow
Plug 'ternjs/tern_for_vim', { 'build': 'npm install'}

" 语法支持
Plug 'ekalinin/Dockerfile.vim'                                  " Dockerfile
Plug 'leshill/vim-json'                                         " JSON
Plug 'digitaltoad/vim-pug'                                      " Pug
Plug 'nikvdp/ejs-syntax'                                        " ejs
Plug 'mustache/vim-mustache-handlebars'                         " hbs

" Plug 'mxw/vim-jsx'
" Plug 'digitaltoad/vim-jade'
" Plug 'posva/vim-vue'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'tpope/vim-haml'

call plug#end()

" 快捷键设置
imap ii <Esc>
imap <C-j> <C-n>
imap <C-k> <C-p>
" 快捷键leader
let mapleader=","
set timeout timeoutlen=1500
" neomake查找错误
nmap <leader>e <Esc>:llist<CR>
nmap <leader>w <Esc>:ll<CR>
" buffer list
nmap <leader><Space> <Esc>:CtrlSpace<CR>
" 切换buffer
" nmap <leader>j <Esc>:bpre<CR>
" nmap <leader>k <Esc>:bnext<CR>
" 切换Tab
nmap <leader>l <Esc>:tabnext<CR>
nmap <leader>h <Esc>:tabprevious<CR>
nmap <leader>s <Esc>:w<CR>
nmap <leader>q <Esc>:q<CR>
" 让 j, k 可以在 自动wrap的行中上下移动
vmap j gj
vmap k gk
nmap j gj
nmap k gk
" NERDTreeToggle
nmap <leader>t :NERDTreeToggle<cr>
" TagBar
nmap <leader>b :Tagbar<cr>
" 快速注释
nmap <leader>v <leader>c<space>
vmap <leader>v <leader>c<space>
" reload
nmap <leader>c :checktime<cr>
" 用空格键来开关折叠
nmap <Space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
vmap <Space> zf
nmap d<Space> zd
vmap d<Space> zd

" 内置Terminal快捷键
" autocmd BufWinEnter,WinEnter term://* startinsert
" autocmd BufLeave term://* stopinsert
tnoremap <Esc> <C-\><C-n>
nmap <leader>g <Esc>:tabedit term://$SHELL<CR>
nmap <leader>f <Esc>:sp term://$SHELL<CR>
nmap <leader>d <Esc>:vsp term://$SHELL<CR>
" tnoremap <F10> <C-\><C-n>:tabnext<CR>
" tnoremap <F9> <C-\><C-n>:tabprevious<CR>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
" nmap <F10> :tabnext<CR>
" nmap <F9> :tabprevious<CR>
nmap <A-h> <C-w>h
nmap <A-j> <C-w>j
nmap <A-k> <C-w>k
nmap <A-l> <C-w>l
nmap <A-left> <Esc>:vertical resize -1<CR>
nmap <A-right> <Esc>:vertical resize +1<CR>
nmap <A-up> <Esc>:resize +1<CR>
nmap <A-down> <Esc>:resize -1<CR>

" UI设置
syntax on                                               " 打开语法高亮
" colorscheme monokai                                     " 设置主题monokai
" let g:monokai_thick_border = 1
colorscheme PaperColor
set background=light
" hi Normal ctermbg=none                                  " 设置主题時不显示背景
hi NonText ctermbg=none
hi MatchParen cterm=none ctermbg=190 ctermfg=46         " 括号匹配颜色
hi Folded ctermbg=253 ctermfg=51                         " 设置折叠区颜色
" set textwidth=80                                      " 设置每行最长宽度
set t_Co=256                                            " 设置主题时背景是否可变,256色支持
" set cursorline                                        " 显示横线
" set cursorcolumn                                      " 显示列线
set scrolloff=10                                        " 光标移动到倒数第10行开始滚屏
set sidescroll=1                                        " 横向滚屏时为1字符
set number                                              " 显示行号
set showmatch                                           " 高亮括号配对
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1                     " 插入模式下光标变为竖线
set hidden


" 文件类型配置
filetype on                                             " 打开文件类型支持
filetype plugin on                                      " 打开文件类型插件支持
filetype indent on                                      " 打开文件类型缩进支持


" 文件编码
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,gbk,gb18030,gb2312,cp936,usc-bom,euc-jp
set termencoding=utf-8


" 其他设置
set backspace=indent,eol,start                          " 在insert模式下能用删除键进行删除
set smartcase                                           " 搜索时，智能大小写
set nocompatible                                        " 与vi不兼容
set autoindent                                          " 自动缩进
set smartindent                                         " 智能缩进
set modeline                                            " 底部模式行
set comments=sl:/*,mb:\ *,elx:\ */                      " 智能注释
set incsearch                                           " incremental search
set lazyredraw                                          " Don't redraw while executing macros (good performance config)
set magic                                               " For regular expressions turn magic on
set autochdir                                           " 打开文件时，自动 cd 到文件所在目录
set expandtab                                           " 缩进设置，2个空格代替Tab
set shiftwidth=2
set softtabstop=2
set smarttab
set noswapfile
set clipboard=unnamed,unnamedplus                       " 解决系统粘贴板问题
set autoread

" 插件设置
source ~/.config/nvim/config/saveview.vim               " 保存代码折叠,光标位置等相关信息
source ~/.config/nvim/config/customfold.vim             " 自定义折叠格式
source ~/.config/nvim/config/indentLine.vim             " 缩进线
source ~/.config/nvim/config/emmet.vim                  " emmet设置
source ~/.config/nvim/config/airline.vim                " airline设置
source ~/.config/nvim/config/nerdtree.vim               " nerdtree设置
source ~/.config/nvim/config/delimitMate.vim            " delimitMate设置
source ~/.config/nvim/config/deoplete.vim               " deoplete设置
source ~/.config/nvim/config/neomake.vim                " neomake设置
source ~/.config/nvim/config/autoformat.vim             " autoformat设置
source ~/.config/nvim/config/ultisnips.vim              " ultisnips设置
source ~/.config/nvim/config/ctrlspace.vim              " ctrlspace设置
source ~/.config/nvim/config/nerdcommenter.vim          " nerdcommenter设置
source ~/.config/nvim/config/tagbar.vim                 " Tagbar设置
source ~/.config/nvim/config/easymotion.vim             " easymotion设置
source ~/.config/nvim/config/deoplete-ternjs.vim        " tern设置
