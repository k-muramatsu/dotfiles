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
"選択領域の移動
NeoBundle 't9md/vim-textmanip'

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

"vim-textmanjpの設定
"複製の設定
xmap <M-d> <Plug>(textmanip-duplicate-down)
nmap <M-d> <Plug>(textmanip-duplicate-down)
"移動の設定
xmap <C-j> <Plug>(textmanip-move-down)
xmap <C-k> <Plug>(textmanip-move-up)
xmap <C-h> <Plug>(textmanip-move-left)
xmap <C-l> <Plug>(textmanip-move-right)

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
"カーソル行の強調表示
set cursorline
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden

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

"unite.vimの設定
"インサートモードで開始
let g:unite_enable_start_insert=1
"prefix keyの設定
nmap <Space> [unite]

"スペースキーとfキーでバッファと最近開いたファイル一覧を表示
nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer file_mru<CR>
"スペースキーとgキーでブックマーク一覧を表示
nnoremap <silent> [unite]g :<C-u>Unite<Space>bookmark<CR>
"スペースキーとdキーでカレントディレクトリを表示
nnoremap <silent> [unite]d :<C-u>Unite<Space>file<CR>
"ブックマーク追加
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
"スペースキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> [unite][unite] :q<CR>
au FileType unite inoremap <silent> <buffer> [unite][unite] <ESC>:q<CR>
