" ----------------------------------------------------------------------------------------------------
" @file         autocmd_ft.vim
" @description  Auto-commands for specific filetypes
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" XML, SQL, HTML, CSS & Javascript {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType html setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType css setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType css inoremap !! !important
autocmd FileType javascript setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType sql setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType xml vmap ,px !xmllint --format  --encode utf8 - <CR> 
autocmd FileType xml setl foldmethod=syntax expandtab ts=2 shiftwidth=2 softtabstop=2 
autocmd FileType xml let g:xml_syntax_folding = 1
" }}}

