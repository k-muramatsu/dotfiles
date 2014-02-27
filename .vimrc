if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

"統合インターフェース
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
"vimshellを動かすのに必要らしい
NeoBundle 'Shougo/vimproc'
"Vim上でシェルを実行できる
NeoBundle 'Shougo/vimshell'
"ツールバーのアイコンを変更
NeoBundle 'istepura/vim-toolbar-icons-silk'
"テキストオブジェクトをもっと便利に
NeoBundle 'tpope/vim-surround'
"CakePHP用プラグイン
NeoBundle 'violetyk/cake.vim'
"Emmetプラグイン
NeoBundle 'mattn/emmet-vim'
"JSON表示用プラグイン
NeoBundle 'elzr/vim-json'
"タブ用プラグイン
NeoBundle 'kana/vim-tabpagecd'
"入力補完用プラグイン
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
"ファイラープラグイン
NeoBundle 'Shougo/vimfiler'
"コメントアウト
NeoBundle 'tyru/caw.vim'
"ステータスラインのカスタマイズ
NeoBundle 'itchyny/lightline.vim'
"起動画面を設定
NeoBundle 'mhinz/vim-startify'
"fによるカーソル移動拡張
NeoBundle 'rhysd/clever-f.vim'

filetype plugin indent on

NeoBundleCheck

"VimFilerの設定
"デフォルトでIDE風のFilerを開く
"autocmd VimEnter * VimFiler -split -simple -winwidth=40 -no-quit
"F2を押すとファイラーの表示・非表示を切り替える
nnoremap <F2> :VimFiler -buffer-name=explorer -simple -split -winwidth=45 -toggle -no-quit<Cr>

let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:netrw_liststyle = 3

"ルーラーを表示
set ruler
"行数を表示
set number
"タブ
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0
"折り返ししない
set nowrap
"スワップファイルの出力先を変更する
set directory=~/vimfiles/tmp
"バックアップファイルの出力先を変更する
set backupdir=~/vimfiles/tmp
"ステータスラインを常に表示
set laststatus=2
"コマンドの履歴を設定
set history=100

"引用符, 括弧の設定
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap < <><Left>
"コンマの後に自動的にスペースを挿入
inoremap , ,<Space>
"履歴検索
nnoremap : q:a
nnoremap / q/a
nnoremap ? q?a
"行末への移動
nnoremap <C-\> $
"縦方向は論理移動する
noremap j gj
noremap k gk
noremap gj j
noremap gk k
"<Leader><Leader>で変更があれば保存
noremap <Leader><Leader> :up<CR>
