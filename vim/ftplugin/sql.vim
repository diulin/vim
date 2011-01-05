" Vim filetype plugin file
" Language:	SQL (Common for Oracle, Microsoft SQL Server, Sybase)
" Version:	0.02
" Maintainer:	David Fishburn <fishburn@ianywhere.com>
" Last Change:	Tue May 27 2003 09:33:31

" This file should only contain values that are common to all SQL languages
" Oracle, Microsoft SQL Server, Sybase ASA/ASE, MySQL, and so on
" If additional features are required create:
" vimfiles/after/ftplugin/sql.vim
" to override and add any of your own settings

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1


setlocal ts=2
setlocal foldmethod=marker
setlocal foldmarker={{{,}}}
setlocal cms=/*%s*/

if !exists("*A2N")
"  finish
function! A2N(aaa)
  let ans=0
  let sss=a:aaa
  let lll=strlen(sss)
  let ttt=lll-1
  let md=0
  let mmm=1
  while ttt >= 0 
    let md = char2nr(strpart(sss,ttt,1))
    if md > 57
      let ans = ans + (md-55) * mmm
    else  
      let ans = ans + (md-48) * mmm
    endif
    let mmm = 36 * mmm
    let ttt = ttt-1
  endwhile
  return ans
endfunction
endif 

if !exists("*N2A")
"  finish
function! N2A(nnn)
  let ans=""
  let char=""
  let nr=a:nnn
  let md=0
  while nr > 0
    let md = nr%36
    let char = (md > 9 ? nr2char(md+55) :nr2char(md+48))
    let ans=char . ans
    let nr = nr/36
  endwhile
  return ans
endfunction
endif 



let maplocalleader = ","
" Add mappings, unless the user didn't want this.
"if !exists("no_plugin_maps") && !exists("no_sql_maps")
if 1<0

  if !hasmapto('<Plug>sqlVDo')
    vmap <buffer> <LocalLeader>, <Plug>sqlVDo
  endif
 
  if !hasmapto('<Plug>sqlDo')
    nmap <buffer> <LocalLeader>, <Plug>sqlDo
  endif
  nnoremap <buffer> <Plug>sqlDo  :DBExecRangeSQL<CR>

  if !hasmapto('<Plug>sqlCloseResult')
    nmap <buffer> <LocalLeader>q <Plug>sqlCloseResult
  endif
  nnoremap <buffer> <Plug>sqlCloseResult  :DBCloseResults<CR>


 vnoremap <buffer> <Plug>sqlVDo  :DBExecRangeSQL<CR>

  if !hasmapto('<Plug>sqlComment')
    vmap <buffer> <LocalLeader>// <Plug>sqlComment
  endif
  vnoremap <buffer> <Plug>sqlComment  <Esc>:let b:a=@/<CR>gv:s/^/-- /<CR>:let @/=b:a<CR>
  if !hasmapto('<Plug>sqlUncomment')
    vmap <buffer> <LocalLeader>?? <Plug>sqlUncomment
  endif
  vnoremap <buffer> <Plug>sqlUncomment  <Esc>:let b:a=@/<CR>gv:s/^\(\s*\)-- /\1/<CR>:let @/=b:a<CR>
  if !hasmapto('<Plug>sqlSelectAll')
    nmap <buffer> <LocalLeader>ta <Plug>sqlSelectAll
  endif
  nnoremap <buffer> <Plug>sqlSelectAll  :let b:a=@"<CR>yiwOselect * from ";<Esc>
  if !hasmapto('<Plug>sqlExplainTable')
    nmap <buffer> <LocalLeader>te <Plug>sqlExplainTable
  endif
  nnoremap <buffer> <Plug>sqlExplainTable  :let b:a=@"<CR>yiwOexplain ";<Esc>
  " convert number under cursor from decimal into 36-mal
  if !hasmapto('<Plug>1cTo36')
    nmap <buffer> <LocalLeader>aj <Plug>1cTo36
  endif
  nnoremap <buffer> <Plug>1cTo36  yiw:let @*=A2N(@")<CR>:echo @*<CR>
  " convert number under cursor from 36-mal into decimal
  if !hasmapto('<Plug>1cFrom36')
    nmap <buffer> <LocalLeader>ah <Plug>1cFrom36
  endif
  nnoremap <buffer> <Plug>1cFrom36  yiw:let @*=N2A(@")<CR>:echo @*<CR>
endif

