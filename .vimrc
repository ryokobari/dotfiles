execute pathogen#infect()
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
set shiftwidth=2
set tabstop=2
set expandtab
syntax on

set nocompatible

filetype plugin on
filetype indent on



set background=dark
colorscheme solarized

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
set encoding=utf-8
set fileencodings=utf-8,sjis,euc
set fileformats=unix,dos,mac


" 自動インデント
set autoindent

" インデントはスマートインデント
set smarttab
" バックスペースとかちょっと賢く
set backspace=indent,eol,start
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" コマンドの自動補完
"set wildmenu

" 対応括弧の強調
set showmatch

" ステータスラインを常に表示
set laststatus=2

" いろいろ表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" インクリメンタルサーチ
set incsearch

" ctags の設定
set tags=tags

" 表示行単位で移動
nmap j gj
nmap k gk
vmap j gj
vmap k gk

set hlsearch

let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black

source $VIMRUNTIME/macros/matchit.vim
augroup matchit
  au!
  au FileType ruby let b:match_words = '\<\(module\|class\|def\|begin\|do\|if\|until\|unless\|case\)\>:\<\(elsif\|when\|rescue\)\>:\<\(else\|ensure\)\>:\<end\>'
augroup END


" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
