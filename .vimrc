"NeoBundleの設定"{{{
    if has('vim_starting')
      set nocompatible
      set runtimepath+=~/.vim/bundle/neobundle.vim/
    endif

    call neobundle#rc(expand('~/.vim/bundle/'))

    NeoBundleFetch 'Shougo/neobundle.vim'

    "統合インターフェース
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'Shougo/neomru.vim'
    NeoBundle 'Shougo/vimfiler.vim'
    NeoBundle 'Shougo/unite-outline'
    NeoBundle 'ujihisa/unite-colorscheme'
    "テキストオブジェクトをもっと便利に
    NeoBundle 'tpope/vim-surround'
    "CakePHP用プラグイン
    NeoBundle 'violetyk/cake.vim'
    "Emmetプラグイン
    NeoBundle 'mattn/emmet-vim'
    "JSON表示用プラグイン
    NeoBundle 'elzr/vim-json'
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
    "ブラウザを素早く開く
    NeoBundle 'tyru/open-browser.vim'
    "整列プラグイン
    NeoBundle 'h1mesuke/vim-alignta'
    "メモ管理
    NeoBundle 'glidenote/memolist.vim'
    "テキストオブジェクトを拡張
    NeoBundle 'gcmt/wildfire.vim'
    "特定のワードをtoggleする
    NeoBundle 'knt45/my-vimtoggle'
    "Qiitaクライアント
    NeoBundle 'mattn/qiita-vim'
    "Vimを1つのインスタンスで使う
    NeoBundle 'thinca/vim-singleton'
    "Gitプラグイン
    NeoBundle 'tpope/vim-fugitive'
    "jkで高速移動
    NeoBundle 'rhysd/accelerated-jk'
    "テンプレート管理
    NeoBundle 'mattn/sonictemplate-vim'
    "editorconfig
    NeoBundle 'editorconfig/editorconfig-vim'
    "カーソル移動系
    NeoBundle 'Lokaltog/vim-easymotion'

    filetype plugin indent on

    NeoBundleCheck
"}}}

"vim-singletonの設定"{{{
    call singleton#enable()
"}}}

"各種設定"{{{
    "シンタックスハイライトを有効にする
    syntax on
    "モードラインをONにする
    set modeline
    "メニューバーを非表示にする
    set guioptions-=m
    "ツールバーを非表示にする
    set guioptions-=T
    "左右のスクロールバーを非表示にする
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    "水平スクロールバーを非表示にする
    set guioptions-=b
    "OSのクリップボードを使う
    set clipboard=unnamed
    "ルーラーを表示
    set ruler
    "行数を表示
    set number
    "タブの設定
    set expandtab tabstop=4 shiftwidth=4 softtabstop=0
    "インデントの設定
    set autoindent
    set smartindent
    "折り返ししない
    set nowrap
    "スワップファイルを作成しない
    set noswapfile
    "バックアップファイルを作成しない
    set nobackup
    "ステータスラインを常に表示
    set laststatus=2
    "変更中のファイルでも、保存しないで他のファイルを表示
    set hidden
    "他で書き換えられたら自動で読み直す
    set autoread
    "カーソルの上または下に表示する最小限の行数
    set scrolloff=5
    "コマンドラインモードで保存する履歴件数
    set history=100
    "コマンドラインモードでTABキーによるファイル名補完を有効にする
    set wildmenu wildmode=list:longest,full
    "検索時に大文字・小文字を区別しない
    set ignorecase
    "ただし、検索後に大文字小文字が混在しているときは区別する
    set smartcase
    "スペルチェックを有効にする(ただし日本語は除外する)
    set spelllang+=cjk
    set spell
    "不可視文字を可視化する
    set list
    set listchars=tab:>.,trail:_
"}}}

"キーマッピング"{{{
    "-----------------------------------------------------------------------------------"
    " Mappings                                                                          |
    "-----------------------------------------------------------------------------------"
    " コマンド        | ノーマル | 挿入 | コマンドライン | ビジュアル | 選択 | 演算待ち |
    " map  / noremap  |    @     |  -   |       -        |     @      |  @   |    @     |
    " nmap / nnoremap |    @     |  -   |       -        |     -      |  -   |    -     |
    " vmap / vnoremap |    -     |  -   |       -        |     @      |  @   |    -     |
    " omap / onoremap |    -     |  -   |       -        |     -      |  -   |    @     |
    " xmap / xnoremap |    -     |  -   |       -        |     @      |  -   |    -     |
    " smap / snoremap |    -     |  -   |       -        |     -      |  @   |    -     |
    " map! / noremap! |    -     |  @   |       @        |     -      |  -   |    -     |
    " imap / inoremap |    -     |  @   |       -        |     -      |  -   |    -     |
    " cmap / cnoremap |    -     |  -   |       @        |     -      |  -   |    -     |
    "-----------------------------------------------------------------------------------"

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
    "左右の矢印キーでバッファを移動
    nnoremap <M-LEFT> :bp<CR>
    nnoremap <M-RIGHT> :bn<CR>
    "全選択する
    nnoremap <Leader>a ggVG
    "新しいタブを開く
    map <Leader>t :tabnew<CR>
    "開いているタブを閉じる
    map <Leader>w :tabclose<CR>
    "インデント後に再選択
    vnoremap < <gv
    vnoremap > >gv
    "vimrcとgvimrcの編集、保存、読み込み
    nnoremap <Leader>v :e $MYVIMRC<CR>
    nnoremap <Leader>g :e $MYGVIMRC<CR>
    nnoremap <Leader>s :up $MYVIMRC<Bar>:up $MYGVIMRC<BAR>:source $MYVIMRC<Bar>:source $MYGVIMRC<CR>
    "ハイライトを消す
    nmap <Esc><Esc> :nohlsearch<CR><Esc>
"}}}

"caw.vimの設定"{{{
    "Ctrl+Shift+cでコメントアウトのON/OFF
    xmap <C-S-c> gcc
    nmap <C-S-c> gcc
"}}}

"accelerated-jkの設定"{{{
    nmap j <Plug>(accelerated_jk_gj)
    nmap k <Plug>(accelerated_jk_gk)
"}}}

"vim-textmanjpの設定"{{{
    "複製の設定
    xmap <C-S-DOWN> <Plug>(textmanip-duplicate-down)
    nmap <C-S-DOWN> <Plug>(textmanip-duplicate-down)
    "移動の設定
    xmap <M-S-DOWN> <Plug>(textmanip-move-down)
    xmap <M-S-UP> <Plug>(textmanip-move-up)
    xmap <M-S-LEFT> <Plug>(textmanip-move-left)
    xmap <M-S-RIGHT> <Plug>(textmanip-move-right)
"}}}

"open-browser.vimの設定"{{{
    "カーソル下のURLをブラウザで開く
    nmap <Leader>o <Plug>(openbrowser-open)
    vmap <Leader>o <Plug>(openbrowser-open)
"}}}

"vim-easymotionの設定"{{{
    "General Configuration
    let g:EasyMotion_do_mapping = 0
    let g:EasyMotion_enter_jump_first = 1
    let g:EasyMotion_space_jump_first = 1

    "Find Motions
    nmap s <Plug>(easymotion-s2)
    xmap s <Plug>(easymotion-s2)
    omap z <Plug>(easymotion-s2)
    let g:EasyMotion_smartcase = 1

    "Line Motions
    map <Space>j <Plug>(easymotion-j)
    map <Space>k <Plug>(easymotion-k)
    let g:EasyMotion_startofline = 0

    "Search Motions
    "`<Tab>` & `<S-Tab>` to scroll up/down a page with next match
    nmap g/ <Plug>(easymotion-sn)
    xmap g/ <Plug>(easymotion-sn)
    omap g/ <Plug>(easymotion-tn)
"}}}

"unite.vimの設定 {{{
    "インサートモードで開始
    let g:unite_enable_start_insert = 1
    "ヒストリー/ヤンク機能を有効化
    let g:unite_source_history_yank_enable =1
    "file_recのキャッシュの最小値/最大値を設定
    let g:unite_source_rec_min_cache_files = 100
    let g:unite_source_rec_max_cache_files = 5000
    "prefix keyの設定
    nmap <Space> [unite]

    "スペースキーとaキーでカレントディレクトリを表示
    nnoremap <silent> [unite]a :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
    "スペースキーとfキーでバッファと最近開いたファイル一覧を表示
    nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer file_mru<CR>
    "スペースキーとdキーで最近開いたディレクトリを表示
    nnoremap <silent> [unite]d :<C-u>Unite<Space>directory_mru<CR>
    "スペースキーとbキーでバッファを表示
    nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
    "スペースキーとrキーでレジストリを表示
    nnoremap <silent> [unite]r :<C-u>Unite<Space>register<CR>
    "スペースキーとhキーでヒストリ/ヤンクを表示
    nnoremap <silent> [unite]h :<C-u>Unite<Space>history/yank<CR>
    "スペースキーとtキーでタブを表示
    nnoremap <silent> [unite]t :<C-u>Unite<Space>tab<CR>
    "スペースキーとoキーでoutline
    nnoremap <silent> [unite]o :<C-u>Unite<Space>outline<CR>
    "スペースキーとENTERキーでfile_rec:!
    nnoremap <silent> [unite]<CR> :<C-u>Unite<Space>file_rec:!<CR>
    "unite.vimを開いている間のキーマッピング
    autocmd FileType unite call s:unite_my_settings()
    function! s:unite_my_settings()"{{{
        " ESCでuniteを終了
        nmap <buffer> <ESC> <Plug>(unite_exit)
    endfunction"}}}
"}}}

"vimfiler.vimの設定"{{{
    "vimデフォルトのエクスプローラをvimfilerで置き換える
    let g:vimfiler_as_default_explorer = 1
    "セーフモードを無効にした状態で起動する
    let g:vimfiler_safe_mode_by_default = 0
    "現在開いているバッファをIDE風に開く
    nnoremap <silent> <Leader>z :<C-u>VimFilerBufferDir -split -simple -winwidth=45 -toggle -no-quit<CR>
"}}}

"memolist.vimの設定"{{{
    "memolistの保存場所
    let g:memolist_path = "$HOME/.vim/memolist"
    "unite.vim対応
    let g:memolist_unite = 1
    let g:memolist_unite_source = "file_rec"
    let g:memolist_unite_option = "-start-insert"
"}}}

"ユーティリティー"{{{
    "jqコマンドを実行する
    command! -nargs=? Jq call s:Jq(<f-args>)
    function! s:Jq(...)
        if 0 == a:0
            let l:arg = "."
        else
            let l:arg = a:1
        endif
        execute "%! jq \"" . l:arg . "\""
    endfunction
"}}}

"バッファが切り替わるたびにバッファのディレクトリに移動"{{{
    augroup AutoCD
      autocmd!
      autocmd BufEnter * lcd %:p:h
    augroup END
"}}}

" novim: foldmethod=marker
" novim: foldcolumn=3
" novim: foldlevel=0
