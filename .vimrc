" first install vundle :mkdir -p ~/.vim/bundle && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
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
Plugin 'majutsushi/tagbar'
" 语法检查
Plugin 'vim-syntastic/syntastic'
" ctrl-n 左侧显示文件目录，需要配置ctrl-n
Plugin 'scrooloose/nerdtree'
" 自动显示补全菜单
"Plugin 'Shougo/neocomplete.vim'
" 输入引号等自动补全
Plugin 'Raimondi/delimitMate'
" 快速搜索如 leader键为, 如,,f查找字符等
Plugin 'Lokaltog/vim-easymotion'
" 主题 solarized
Plugin 'altercation/vim-colors-solarized'
" 主题molokai
Plugin 'tomasr/molokai'
" vim底部显示的漂亮一点
Plugin 'itchyny/lightline.vim'
"" 批量加注释 v模式下选中,cc加注释，,cu去掉注释,注意键入逗号
Plugin 'scrooloose/nerdcommenter'
" 括号自动成对显示
Plugin 'jiangmiao/auto-pairs'
" 在normal模式下,p查找文件
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plugin 'junegunn/fzf.vim'
" 显示对齐线
"Plugin 'Yggdroot/indentLine'
" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
"" if you dont want ycm ,you can use deoplete -- start
"if has('nvim')
  "Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plugin 'Shougo/deoplete.nvim'
  "Plugin 'roxma/nvim-yarp'
  "Plugin 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1
"" -- end

call vundle#end()
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

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:neocomplete#enable_at_startup = 1
let g:go_fmt_command = "goimports"
let g:go_disable_autoinstall = 0
let g:indentLine_char = 'c'
" ==== lightline start
let g:lightline = {}
let g:lightline.separator = {'left': '⮀', 'right': '⮂'}
let g:lightline.subseparator = {'left': '⮁', 'right': '⮃'}
" ==== lightlien end
" ===== ycm start =======
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_collect_indentifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
" 避免YCM每次加载都对用户提示是否加载
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
" ===== ycm end  ========
let g:indentLine_char = '¦'
" ========= map配置 =============
let g:mapleader = ','
nmap <Leader>f :History<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>p :Files<CR>
map <C-n> :NERDTreeToggle<CR>
nmap <CR> :TagbarToggle<CR>
" ===== easy-motion =====
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" ===== easy-motion =====

nmap <Leader>t :terminal<CR>
nmap <Leader>s :split<CR>
nmap <Leader>v :vsplit<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>
nmap <Leader>w :w<CR>
nmap <Leader><tab> :tabNext<CR>
nmap <Leader>cw :tabc<CR>
nmap <Leader>1 1gt<CR>
nmap <Leader>2 2gt<CR>
nmap <Leader>3 3gt<CR>
nmap <Leader>4 4gt<CR>
nmap <Leader>5 5gt<CR>
" ========= map end =============
" ========= set ==============
set cursorline " 设置横竖线
set cursorcolumn
set laststatus=2
set showmatch " 显示代码匹配
set background=dark
" set t_Co=256
set ts=4  " set tabstop=4 设置tab键为4个空格
set sw=4  " set shiftwidth=4 换行自动缩进设置为4个空格
set expandtab
set autoindent " 自动对齐格式引用到下一行，set smartindent, 智能的对齐方式
set hls
"let g:solarized_termcolors=256
"colorscheme solarized
colorscheme molokai
filetype plugin indent on
syntax on

