" Vim filetype plugin file
" Language:	Cache Object Script (terminal)	
" Maintainer:	Diulin Andriy 
" Last Change:	2009 Sep 20


" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif


let b:did_ftplugin = 1

let maplocalleader = ","
"
"" exec vim command (whole line under cursor)
"nmap <buffer>,. :<C-R>=getline(".")<CR><CR>
"nmap <buffer>,,  :call system('<C-R>=getline(".")<CR> > /tmp/err.err 2>&1')<CR>:e /tmp/err.err<CR>

"vmap <buffer>,. <Esc>:call ExecSelected(0)<CR>
"vmap <buffer>,, <Esc>:call ExecSelected(1)<CR>

setlocal commentstring=;\ %s

setlocal ts=2


setlocal foldmethod=marker
setlocal foldmarker={{{,}}}


