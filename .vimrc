"基本設定 {{{1
"一旦ファイルタイプをoffにする
filetype off
"ctagsでタグジャンプを可能にする
set tags=~/.tags
".swpファイルを生成しない
set noswapfile
":のあとで補完的になる
set wildmenu
"vimエディタで開いているファイルと同じディレクトリを初期ディレクトリとして設定する。
set browsedir=buffer
"検索の時に大文字小文字を無視
set ignorecase
"検索結果をハイライトして表示
set hlsearch
"タブを半角スペースで入力する
set expandtab
"インクリメンタルサーチで検索する
set incsearch
":bコマンドでbufferを切り替える時に編集中ファイルを保存しなくても良くなる
set hidden
"不可視文字を表示
set list
"不可視文字の表示方法
set listchars=tab:>-,trail:-,extends:<
"行数を表示
set number
"対応するカッコを表示
set showmatch
"改行時に前の行のインデントを継続する
set autoindent
"改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
"タブの幅を指定
set tabstop=2
"自動インデントでずれる幅
set shiftwidth=2
"ビープ音をなくす
set vb t_vb=
"エンコード指定
set encoding=utf-8
"フォーマットに依存する改行コードの自動判定
set fileformats=unix,dos,mac
"ビジュアルモードで選択したテキストがクリップボードに入るようにする。
set clipboard=unnamed,autoselect,unnamedplus
"ファイルごとにオプションを設定できるようにする（モードライン）
set modeline
"バックスペースでインデントや行を削除可能にする。
set backspace=indent,eol,start
"文字に色をつける
syntax on
"カラースキームを設定する
colorscheme molokai
set t_Co=256
"行数を黄色にする
highlight LineNr ctermfg=yellow

noremap j gj
noremap <s-h>   ^
noremap <s-j>   }
noremap <s-k>   {
noremap <s-l>   $
noremap m  %
nnoremap == gg=G''
inoremap <C-f> <C-x><C-o>
" }}}1
" その他 {{{1
"
"
"source ~/.vim/external/space.vim
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
"最後にいた場所に移動
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
filetype on
