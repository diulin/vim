" Vim filetype plugin file
" Language:	calendar	
" Maintainer:	Diulin Andriy 
" Last Change:	2006 Sep 20


" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif


let b:did_ftplugin = 1

let maplocalleader = ","
"
" exec vim command (whole line under cursor)
nmap <buffer>,. :<C-R>=getline(".")<CR><CR>
nmap <buffer>,,  :call system('<C-R>=getline(".")<CR> > /tmp/err 2>&1')<CR>:e /tmp/err<CR>

vmap <buffer>,. <Esc>:call ExecSelected(0)<CR>
vmap <buffer>,, <Esc>:call ExecSelected(1)<CR>

setlocal commentstring=#\ %s

setlocal ts=2


setlocal foldmethod=marker
setlocal foldmarker={{{,}}}

let i = 1
while match(getline(i), '^\s*$') == -1
 let s:ccc = substitute(getline(i),'#.*$',"","")
  " echo s:ccc
  exe  s:ccc
  let i = i + 1
endwhile


function! ExecSelected(flShell)
  if a:flShell==1
    let s:pref="r!"
  else
    let s:pref=""
  endif
  let i = line("'<")
  while i <= line("'>")
    if  (match(getline(i),'^\s*#')>-1)
      let i = i + 1
      continue
    endif
   let s:ccc=s:pref.getline(i)
    exe  s:ccc
    let i = i + 1
  endwhile
endfunction
