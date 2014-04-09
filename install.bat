CD %USERPROFILE%
RMDIR vimfiles
DEL .vimshrc
DEL _vimrc
DEL _gvimrc
DEL .editorconfig
MKLINK _vimrc dotfiles\.vimrc 
MKLINK _gvimrc dotfiles\.gvimrc 
MKLINK .editorconfig dotfiles\.editorconfig
MKLINK .vimshrc dotfiles\.vimshrc
MKLINK /D vimfiles dotfiles\vimfiles
