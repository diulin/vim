""ukr letters
function! ToggleUkr()
  if (exists("b:ukr")==0) 
    let b:ukr=0
  endif 
  if (b:ukr==0) 
    exe 'setlocal keymap=ukrainian-jcuken'
    let b:ukr=1
  else
    exe 'setlocal keymap=russian-jcukenwin'
    let b:ukr=0
  endif 
endfunction
"
command! ToggleUkr :call ToggleUkr()
"

