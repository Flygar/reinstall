"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim配置

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

set background=light	"设置背景为亮色,这里可以先不设置,可以暂时保持和terminal的色调相同

"colorscheme molokai	"设置颜色主题为molokai,前提是你安装了molokai主题
"git clone https://github.com/tomasr/molokai.git
"cd molokai/colors
"mv molokai.vim ~/.vim/colors/
"vim ~/.vimrc

set wildmenu          "use menu for command line completion

set magic             "changes special characters in search patterns
set wrap              "long lines wrap and continue on the next line

set nocompatible      "设置vim不兼容vi的键盘模式

set paste           "allow pasting text
set magic           "changes special characters in search patterns

set backspace=2       "等同于set backspace=indent,eol,start
                      "设置backspace或者del键的工作模式，默认是vi兼容的
                      "默认只能删除本次插入的文本，不是本次插入的文本是无法删除的
                      "我们需要将其设置为2或者indent,eol,start，这两个是等效的
                      "indent，指删除各种缩进和自动缩进的字段
                      "eol，指end of line，可以通过这样来合并两行
                      "start，指删除此次插入之前的输入

"set expandtab         "Tab键转换为空格

set autoindent        "设置自动缩进，当你新开一行的时候将会使用当上一行的缩进
                      "CR，o，O都适用
                      "CR 指回车
                      "o  指向下插入一行
                      "O  指向上插入一行

set shortmess=atI     "打开vim时不显示其版本等信息

set nowrapscan        " 禁止在搜索到文件两端时重新搜索

"set tabstop=2         "设置制表符等于2空格

"set shiftwidth=2      "缩进的大小，以空格为衡量，需要和tabstop一致

set cmdheight=1       "设置命令行高度为2

set autochdir         "自动切换当前目录为编辑文件所在的目录
                      "如果你要用多标签页，那么就得注意这个目录问题
                      "比如你现在编辑的文件的目录是~/github/xxxx，而你想编辑~/.vimrc
                      "就得指定位置，比如tabe ~/.vimrc
                      "那么直接tabe .vimrc即可

"set noignorecase      "不忽略大小写
set ignorecase         "不忽略大小写

set hlsearch          "设置搜索结果高亮，这可能在你搜索了以后一直高亮
                      "解决办法就是搜索以后不存在的字符串
                      "这样没有了匹配，前一次的高亮也就消失了

set incsearch         "即时查找,你按一个键就触发查找，
                      "而不像之前要输完所有字符再按enter键才会开始查找

syntax enable         "启用语法检查

"syntax on             "开启语法高亮 filetype plugin indent on

filetype plugin on    "加载vim自带插件相应的语法和文件类型相关脚本

set smartindent      "开启新行时使用智能自动缩进

set nu                "显示行号    

set relativenumber    "显式相对行号，便于计算上下跳的行数

"set autowrite        "自动保存，指当前文件失去焦点时会触发自动保存
                      "一般而言，你是不会忘记在关闭文件之前使用:w的
                      "而且vim也会提示你

set showmatch         "显示匹配的括号
                      "如果你安装了auto-pair之类的插件，大可注释掉此行

"set cursorline        "高亮光标所在行
                      "即视感就是你光标所在行出现一条横线
                      "cursorline和cursorcolumn
                      "遇到文中有中文英文的时候往往对不齐
                      "可以考虑对其进行关闭
                      "这两者都和配色有关

"set cursorcolumn      "高亮光标所在列
                      "即视感就是你光标所在的那一列会出现一根竖线来提示你
                      "但是，如果你的光标在第一列
                      "有可能导致你看不清第一列的字符，这个和你配色有关

set ruler            "显示当前光标所在的行与列的信息
                      "具体位置在vim窗口右下角，类似4,4，20%
                      "意思分别为，当前光标在第几行，第几列，光标在全文的百分之几十。
                      "不过现在这个经常被airline之类的插件给替代了
                      "如果你的插件里面有airline之类的显示状态的插件，就没必要设置ruler

"set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\  " 设置在状态行显示的信息

"set mouse=a          "使用鼠标点击来定位，即鼠标点哪里，光标就去哪里。
"set fileencodings=ucs-bom,utf-8,gb2312      "vim打开文件的时候，需要识别文件的编码，用的就是这里指定的编码
                                             "vim会根据这里所列出的编码来尝试对文件进行打开
"set fileencoding=utf-8                      "本文件进行保存操作的时候将本文件设置为此选项对于的编码
"set encoding=utf-8                          "vim内部使用的编码，显示消息什么的就会用这个编码
"set termencoding=utf-8                      "告诉vim你目前使用的terminal是什么编码


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vim插件配置

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"设置运行时路径包含vundle插件并且初始化,此处起作用之前提在于你已下载好vundle插件
"相关命令为`git clone https://github.com/vundlevim/vundle.vim.git ~/.vim/bundle/vundle.vim`


set rtp+=~/.vim/bundle/Vundle.vim	

call vundle#begin()                "开始插件管理,这是必备声明,表明接下里你可以声明你需要的插件了                                  
                                   "关于这里声明插件的格式为: key-word '插件名',                                   
                                   "这里的keyword和你的vundle版本有关	                                   
                                   "若vundle版本 < 0.10.2，key-word为bundle                                   
                                   "若bundle版本 > 0.10.2，key-word为plugin                                   
                                                                                                                         
                                   " 可以从以下网站找到好用的vim 插件                                   
                                   " [vim awesome](https://vimawesome.com)                                               
                                   " [github](https://github.com)                                                        
                                   " [vim scripts](http://www.vim.org/scripts/)                                          
                                   " [best of vim](http://www.bestofvim.com/plugin/)
   

Plugin 'vundlevim/vundle.vim'      "声明使用vundle插件

Plugin 'ervandew/supertab'         "关键字补全插件，不过感觉是用的猜的办法，因为没写过的关键字一概猜不出来

Plugin 'bling/vim-airline'         "状态栏插件，显示当前操作模式,当前文件名,行数列数等信息

Plugin 'scrooloose/syntastic'      "语法检测，保存代码时检验语法错误

Plugin 'scrooloose/nerdcommenter'  "注释插件，用来注释代码

Plugin 'scrooloose/nerdtree'       "大名鼎鼎的文件系统插件，用来在vim中显示文件系统,命令:ex也有类似功能

Plugin 'jiangmiao/auto-pairs'      "自动括号补全插件

Plugin 'altercation/solarized'     "solarized配色主题

Plugin 'Xuyuanp/nerdtree-git-plugin' "NERDTree 的git状态插件

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' "NERDTree文件类型语法高亮

Plugin 'alvan/vim-closetag'                      "用于XML和HTML系列的标签补全

"Plugin 'valloric/youcompleteme'    "代码补全插件,这是一个杀手级别的插件,如果你报错了,那么可就太正常了,可以参考它的文档
                                   "安装方法 ubuntu 16.04，依序执行如下命令
                                   "
                                   "sudo apt-get install build-essential cmake
                                   "
                                   "cd ~/.vim/bundle/youcompleteme
                                   "
                                   "./install.py --all
                                   "
                                   "这里跟网络环境有关，或许需要科学上网
                                   "
                                   "./install.py 后面跟的参数是可调的
                                   "
                                   "对应语言支持选项有
                                   "
                                   "c系列语言 --clang-completer
                                   "go --go-completer
                                   "java --java-conpleter
                                   "
                                   "--all意为安装所有支持，包括但不限于上面列出的语言
                                   "执行安装的时候如果碰上了git子模块为空的情况，按照提示执行初始化子模块的命令即可

Plugin 'ryanoasis/vim-devicons'    "美妙的文档图标

call vundle#end()                   "插件声明结束
                                
                                 
                                 
"vim script配置
                                
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim键盘映射配置                                                                                
                                                                                                                                                 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""                                 
                                 
map <f2> : NERDTreeToggle<cr>       "映射f2键打开和关闭nerdtree

let g:ycm_global_ycm_extra_conf = '/home/jsy/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
