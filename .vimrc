set nocompatible
syntax on "自动语法高亮 
set number "显示符号

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tag_files=1 "让YCM同时利用原来的ctags
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree' "加入nerdtree
Plugin 'scrooloose/syntastic' "语法检查
Plugin 'davidhalter/jedi' "补全python
Plugin 'majutsushi/tagbar' "tagbar
Plugin 'msanders/cocoa.vim' "cocoa.vim
Plugin 'L9'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on "开启插件
set magic "设置魔术
set cursorline "突出显示当前行
set ignorecase smartcase "搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set foldmethod=syntax "设置语法折叠
"set guifont=Luxi/ Mono/ 9  "设置字体大小
set ai! "设置自动缩进
set matchtime=1
set smartindent "为c程序提供自动缩进
set tabstop=4 "tab键宽度
set autoindent "自动缩进
set cindent
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set ruler "在编辑过程中，在右下角显示光标位置的状态行
set incsearch "在程序中查询一个单词，自动匹配单词的位置；如查询esk单词，当输入/d时，会自动找到第一个d开头的单词，当输入/de时，会自动找到第一个以ds开头的单词，以此类推，进行查找；当找到要匹配的单词时，别忘记回车

if has("multi_byte")
	"UTF-8编码
	set encoding=utf-8
	set termencoding=utf-8
	set formatoptions+=mM
	set fencs=utf-8,gbk
	
	if has("win32")
		source $VIMRUNTIME/delmenu.vim
		source $VIMRUNTIME/menu.vim
		language messages zh_CN.utf-8
	endif
else
	echoerr "Sorry,this version of (g)vim was not compiled with +multi_byte"
endif
"文件列表
autocmd vimenter * NERDTree
