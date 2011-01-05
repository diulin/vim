runtime! syntax/txt2tags.vim
unlet b:current_syntax

syntax include @1cCode syntax/1c.vim
syntax region 1cCode start="^> " end="^<$" contains=@1cCode  fold keepend

" syn match docIgnore  contained /^[><]$/hs=s,he=e
" syn region 1cCode matchgroup=helpIgnore start=" >$" start="^>$" end="^[^ \t]"me=e-1 end="^<"


hi link docIgnore Ignore
