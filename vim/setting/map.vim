nmap zz za

menu Encoding.CP1251   :e ++enc=cp1251<CR>
menu Encoding.CP866    :e ++enc=cp866<CR>
menu Encoding.KOI8-R   :e ++enc=koi8-r<CR>
menu Encoding.UTF-8    :e ++enc=utf-8<CR>
map ,fe :emenu Encoding.

"" Y works like D, yanks to end of line
map Y y$
""" copy selected into the "+" buffer
vmap ,yy "+y
""" copy selected into the "+" buffer
nmap ,pp "+p
""" copy selected into the "+" buffer
vmap ,pp "+p

"
"" H and L as pageUp and Pagedown
map <silent> H :<C-U>call HContext()<CR>
map <silent> L :<C-U>call LContext()<CR>
func! HContext()
  let moved = MoveCursor("H")
  if !moved && line('.') != 1
    exe "normal! " . "\<pageup>H"
  endif
endfunc

func! LContext()
  let moved = MoveCursor("L")
  if !moved && line('.') != line('$')
    exe "normal! " . "\<pagedown>L"
  endif
endfunc

func! MoveCursor(key)
  let cnum = col('.')
  let lnum = line('.')
  let wline = winline()
  exe "normal! " . v:count . a:key
  let moved = cnum != col('.') || lnum != line('.') || wline != winline()
  return moved
endfunc

"nmap <silent> ,/ :let @/=""<CR>
vmap <silent> //  y/<C-R>=substitute(escape(@", '\\/.*$^~[]'), "\n", "\\\\n", "g")<CR><CR>
"
"
"" Very handy (for myself) mappings
nmap ,cd :cd %:p:h<CR>:pwd<CR>
nmap <C-J> i<C-J><Esc>
nnoremap <C-H> :bp<CR>g`"
nnoremap <C-L> :bn<CR>g`"

nmap <A-1> :bfirst<CR>
nmap <A-9> :blast<CR>

map j gj
map k gk
"" <S-Y> works similar to <S-D>
nmap <S-Y> y$
imap ,, 
imap jj <Esc>
imap <C-A> <Home>
""go end
imap <C-E> <End>
""char left
imap <C-B> <Left>
""char right
imap <C-F> <Right>
""up
imap <M-C-K> <Up>
""down
imap <M-C-J> <Down>
""delete
imap <C-D> <Del>
"
cmap ,, 
cmap <C-D> <Del>

nmap <F2> <Esc>a<C-R>=strftime("%Y.%m.%d-%H:%M:%S")<CR> 
imap <F2> <Esc>a<C-R>=strftime("%Y.%m.%d-%H:%M:%S")<CR> 
imap <F3> <Esc>a<C-R>=strftime("%R")<CR> 
cmap <F2> <C-R>=strftime("%Y%m%d-%H%M%S")<CR> 


"" simple calculator
nmap ,ac :call append(line("."),  printf("%f",eval(getline(line(".")))))<CR>


"" search in helpfiles
nmap ,K "hyiw:he index\| :tse  /<C-R>h<CR>
nmap ,k "hyiw:he index\| :tse  <C-R>h<CR>
vmap ,K "hy:he index\| :tse  /<C-R>h<CR>
vmap ,k "hy:he index\| :tse  <C-R>h<CR>

"aligning tables
map ,tt mq{jV}k:Align \|<CR>'q
map ,t; mq{jV}k:Align \;<CR>'q
