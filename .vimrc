if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

"統合インターフェース
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
"入力補完用プラグイン
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
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
"コメントアウト
NeoBundle 'tyru/caw.vim'
"ステータスラインのカスタマイズ
NeoBundle 'itchyny/lightline.vim'
"fによるカーソル移動拡張
NeoBundle 'rhysd/clever-f.vim'
"選択領域の移動
NeoBundle 't9md/vim-textmanip'
"コマンドを素早く実行
NeoBundle 'thinca/vim-quickrun'

filetype plugin indent on

NeoBundleCheck

"メニューバーを非表示にする
set guioptions-=m
"ツールバーを非表示にする
set guioptions-=T
"OSのクリップボードを使う
set clipboard=unnamed
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
"現在のバッファと直前のバッファを交互に切り替え
nnoremap <Leader><Leader> <C-^>
"全選択する
nnoremap <Leader>a ggVG
"最後に保存したマクロを繰り返し実行する
map Q @@

"vim-textmanjpの設定
"複製の設定
xmap <C-S-DOWN> <Plug>(textmanip-duplicate-down)
nmap <C-S-DOWN> <Plug>(textmanip-duplicate-down)
"移動の設定
xmap <M-S-DOWN> <Plug>(textmanip-move-down)
xmap <M-S-UP> <Plug>(textmanip-move-up)
xmap <M-S-LEFT> <Plug>(textmanip-move-left)
xmap <M-S-RIGHT> <Plug>(textmanip-move-right)

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
"スペースキーとrキーでレジストリを表示
nnoremap <silent> [unite]r :<C-u>Unite<Space>register<CR>
"ブックマーク追加
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
"unite.vimを開いている間のキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
	"ESCでuniteを終了
	nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction"}}}

"JSON整形用コマンド
command! JsonFormat :execute '%!python -mjson.tool'
