if !has('gui_running')
  finish
endif

"起動時にウィンドウを最大化
au GUIEnter * simalt ~x

"カラースキーマの設定
colorscheme desert
set background=dark

"フォントの設定
set guifont=Migu_1M:h12

"ビープ音を無効にする
set visualbell t_vb=

"どのモードでもマウスを利用できるようにする
set mouse=a
