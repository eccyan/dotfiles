" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイルを用意しておく
  let g:rc_dir    = expand("~/.config/nvim/")
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

filetype indent on
filetype plugin indent on

inoremap <silent> jj <ESC>
inoremap <silent> <C-j> j
inoremap <silent> kk <ESC>
inoremap <silent> <C-k> k
noremap <S-h> ^
noremap <S-l> $
nmap <silent> <Esc><Esc> :nohlsearch<CR>


set number
set noswapfile
set expandtab
set hlsearch            " 検索マッチテキストをハイライト
set ignorecase          " 大文字小文字を区別しない
set incsearch           " インクリメンタルサーチ
set matchtime=3         " 対応括弧のハイライト表示を3秒にする
set tabstop=2
set scrolloff=5
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set smarttab
set showmatch           " 対応する括弧などをハイライト表示する
set shiftwidth=2
set softtabstop=4
set expandtab
set list                " 不可視文字の可視化
set listchars=tab:»-,trail:-,eol:~,extends:»,precedes:«,nbsp:%
set whichwrap=b,s,h,l,<,>,[,]
set hidden
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis

" python paths
let g:python_host_prog=$PYENV_ROOT.'/versions/2.7.17/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/3.8.2/bin/python'

" for deoplete.vim
" 一つ目の候補を選択状態にする
set completeopt+=noinsert
