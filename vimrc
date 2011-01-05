" ----------------------------------------------------------------------------------------------------
" @file         .vimrc
" @description  Vim configuration file
" @author       Андрій Діулін (diulin@gmail.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------
autocmd!
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax on
let g:yankring_enabled = 0

source $HOME/.vim/setting/settings.vim
source $HOME/.vim/setting/plugins.vim
source $HOME/.vim/setting/map.vim
source $HOME/.vim/setting/autocmd.vim
source $HOME/.vim/setting/autocmd_ft.vim

""" This disables snipmate
"""set runtimepath=~/.vim,$VIMRUNTIME
""" This murder YankRing!
"set clipboard=autoselect
"set clipboard=unnamed 
"let g:yankring_paste_check_default_buffer=0
"let g:yankring_clipboard_monitor = 3 

"let g:utl_config_highl="off"
"let g:Align_xstrlen= 1
"
""" XML
""" one or more lines:
"vmap ,px !xmllint --format  --encode utf8 - <CR>
""" pretty-print current line
"nmap ,px !!xmllint --format --encode utf8 - <CR>
"""au FileType xml setlocal equalprg='xmllint --format --recover - 2>/dev/null'

