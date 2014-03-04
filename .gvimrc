if !has('gui_running')
  finish
endif

"起動時にウィンドウを最大化
au GUIEnter * simalt ~x

"カラースキーマの設定
colorscheme desert

"IMEの状態でカーソルの色を変更する
highlight CursorIM guifg=NONE guibg=Red

"ビープ音を無効にする
set visualbell t_vb=
