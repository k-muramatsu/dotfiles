if !has('gui_running')
  finish
endif

"起動時にウィンドウを最大化
au GUIEnter * simalt ~x

"カラースキーマの設定
colorscheme desert

"IMEの状態でカーソルの色を変更する(日本語入力モードは赤)
highlight CursorIM guifg=NONE guibg=Red

"画面を半透明化
autocmd GUIEnter * set transparency=240
autocmd FocusGained * set transparency=240
autocmd FocusLost * set transparency=120

"ビープ音を無効にする
set visualbell t_vb=
