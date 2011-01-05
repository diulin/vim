" An example for a gvimrc file.
" The commands in this are executed when the GUI is started.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2001 Sep 02
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"	      for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc
"	    for OpenVMS:  sys$login:.gvimrc

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
" set gfn=Courier_New:h13
" set gfn=Courier_New:h13:cRUSSIAN
"set gfn=Consolas:h13
"set gfn=Bitstream\ Vera\ Sans\ Mono\ 12
set gfn=Liberation\ Mono\ 12
set kmp=russian-jcukenwin
" language en
" set ch=1		" Make command line one line high

set mousehide		" Hide the mouse when typing text

"if has('gui')
"  if has('win32')
"    au GUIEnter * call libcallnr('maximize', 'Maximize', 1)
"  elseif has('gui_gtk2')
"    au GUIEnter * :set lines=99999 columns=99999
"  endif
"endi

" Only do this for Vim version 5.0 and later.
if version >= 500

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Switch on search pattern highlighting.
  set hlsearch
endif

colorscheme twilight

"Only hardest will survive: set off menu, scrollbars, toolbars etc.
set go=i
set gcr=a:blinkon0	" never blink the cursor
" set shm=ilmnx		" abbreviate some status messages
set shm=at		" all messages abbreviated
" set guioptions=acMp	"
set guiheadroom=-12
set helpheight=20

"if version >= 700
"  highlight Pmenu guibg=black gui=none
"endif
" hi iCursor guibg=red guifg=bg
" hi aCursor guibg=green guifg=bg
" " Set cursor of all modes to the aCursor hightlighting group I just
" " defined
" set guicursor=a:aCursor-blinkon0
" " Override all insert modes with the iCursor group
" set guicursor=i-ci:ver30-iCursor-blinkon0
" au GUIEnter * simalt ~Р


