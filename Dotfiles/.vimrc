call plug#begin()
" 安装NERDTree插件，vim界面左侧的文件树形式
Plug 'scrooloose/nerdtree'
" 安装airline插件，底部信息
Plug 'vim-airline/vim-airline'
call plug#end()
" 上方为插件安装

" NERDTree插件配置
nnoremap <silent> <f2> :NERDTreeToggle<CR>
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

runtime! debian.vim
if has("syntax")
  syntax on
endif


set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hidden		" Hide buffers when they are abandoned
set mouse=a		" 开启鼠标 
syntax on
set number
set cursorline
set ruler
set shiftwidth=4	" 设置>><<命令移动的宽度为4
set tabstop=4    	" 设置tab键宽度为4
set smartindent
set laststatus=2
setlocal noswapfile
set hlsearch
set background=dark
filetype plugin indent on

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set runtimepath^=~/.vim/pack/vendor/start/ctrlp.vim 
let g:ctrlp_map ='<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' "设置默认路径为当前路径

