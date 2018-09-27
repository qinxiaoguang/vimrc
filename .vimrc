" first install vundle :mkdir -p ~/.vim/bundle && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vundle begin
set number
set encoding=utf-8
set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible               " be iMproved
filetype off                   " required!
call vundle#begin()
Plugin 'fatih/vim-go'
Plugin 'gmarik/vundle'
Plugin 'dgryski/vim-godef'
Plugin 'Blackrush/vim-gocode'
" 回车右侧显示代码tag信息
Plugin 'majutsushi/tagbar'
" 语法检查
Plugin 'vim-syntastic/syntastic'
" ctrl-n 左侧显示文件目录，需要配置ctrl-n
Plugin 'scrooloose/nerdtree'
" 自动显示补全菜单
"Plugin 'Shougo/neocomplete.vim'
" 输入引号等自动不全
Plugin 'Raimondi/delimitMate'
" 快速搜索如 leader键为, 如,,f查找字符等
Plugin 'Lokaltog/vim-easymotion'
" 主题 solarized
Plugin 'altercation/vim-colors-solarized'
" 主题molokai
Plugin 'tomasr/molokai'
" vim底部显示的漂亮一点
"Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"" 批量加注释 v模式下选中,cc加注释，,cu去掉注释,注意键入逗号
Plugin 'scrooloose/nerdcommenter'
" 括号自动成对显示
Plugin 'jiangmiao/auto-pairs'
" 在normal模式下ctrl-p查找文件
Plugin 'kien/ctrlp.vim'
" 显示对齐线
Plugin 'Yggdroot/indentLine'
" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

" 设置leader键
let g:mapleader = ','
" ctrlp 设置 ,f:最近文件 ,b:buffer文件 ,p:当前目录文件
nmap <Leader>f :CtrlPMRUFiles<CR>
nmap <Leader>b :CtrlPBuffer<CR>
let g:ctrlp_map = '<Leader>p'
" 设置横竖线
set cursorline
set cursorcolumn
" 总是显示状态栏 与vim-powerline配合
set laststatus=2
" 显示代码匹配
set showmatch
nmap <C-m> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

filetype plugin indent on
syntax on

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:neocomplete#enable_at_startup = 1
let g:go_fmt_command = "goimports"
let g:go_disable_autoinstall = 0
let g:indentLine_char = 'c'
set background=dark
set t_Co=256
"let g:solarized_termcolors=256
"colorscheme solarized
 colorscheme molokai
"==== airline 配置
set lazyredraw
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts=1 
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_left_sep='>>>'
let g:airline_right_sep='<<<'
" 关闭空白符检测
"let g:airline#extensions#whitespace#enabled=0
""==== airline end
" tab for 4 space
set ts=4
set expandtab
set hls
" ===== easy-motion =====
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" ===== easy-motion =====
" ycm
"let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_collect_indentifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
" 避免YCM每次加载都对用户提示是否加载
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
" 跳到定义或声明
nnoremap <F2> :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 强制进行编译
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

" ========= my nmap =============
nmap <Leader>t :terminal<CR>
nmap <Leader>s :split<CR>
nmap <Leader>v :vsplit<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>
nmap <Leader>w :w<CR>
nmap <Leader><tab> :tabNext<CR>
nmap <Leader>cw :tabc<CR>
" ========= my nmap =============

" 设置对齐线格式
let g:indentLine_char = '¦'
filetype on

