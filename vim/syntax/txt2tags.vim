" Vim syntax file
" Filename: txt2tags.vim
" Language: marked text for conversion by txt2tags
" Maintainer: aurelio marinho jargas
" Last change: 20021004 - added macros and commands
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INFO:
"
" - This is the txt2tags VIM syntax file.
" - It's a syntax file just like those for programming languages as C
"   or python, so you know it's handy.
" - Here are registered all the structures defined on the RULES file.
" - When composing your text file, the marks will be highlighted,
"   helping you to quickly make error-free txt2tags files.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOLD:
"
" - There are some folding rules on the syntax also
" - To use fold just uncomment the line of foldmethod below
" - Or set the fold use directly on the t2t file, adding this last line:
"
"     % vim: foldmethod=syntax
"
" - There are two kinds of fold:
"
"   Automatic fold:
"     - The fold starts at any top level title
"     - The fold ends with 3 consecutive blank lines
"
"   User defined fold:
"     - The fold starts by the "% label {{{" comment
"     - The fold ends with the "% }}}" comment
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INSTALL: (as user)
"
" - Just put in your .vimrc the following line:
"   au BufNewFile,BufRead *.t2t source ~/path/to/txt2tags.vim
"
" - If you want to link the .txt extension to txt2tags also, add:
"   au BufNewFile,BufRead *.txt source ~/path/to/txt2tags.vim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INSTALL: (as superuser)
"
" If you have access to the system configuration, edit the
" /usr/share/vim/vim61/filetype.vim file, adding the following
" lines after the 'Z-Shell script' entry (near the end):
"
"   " txt2tags file
"   au BufNewFile,BufRead *.t2t                 setf txt2tags
"
" And of course, copy the txt2tags.vim file to the
" /usr/share/vim/vim61/syntax/ dir
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"FOLD: just uncomment the following line if you like to use Vim fold
"set foldmethod=syntax


" init
syn clear
syn sync minlines=500
syn case ignore

"TODO see if user already has foldmethod defined, if so, set foldmethod=syntax
"TODO2 learn vim language :/

syn cluster t2tSpecial     contains=t2tNumber,t2tPercent,t2tDate,t2tImg,t2tEmail,t2tUrl,t2tUrlMark,t2tUrlMarkImg,t2tUrlLocal
syn cluster t2tBeautifiers contains=t2tUnderline,t2tItalic,t2tBold,t2tBoldItalic,t2tMonospace

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"LIST:
syn match t2tList    '^ *[+-] [^ ]'me=e-1
syn match t2tDefList '^ *= [^:]\+:' contains=t2tDefListId,@t2tSpecial,@t2tBeautifiers
syn match t2tDefListId contained '= \|:'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TITLE:
syn match t2tTitleMark contained '^\s*=\+'
syn match t2tTitleMark contained '=\+$'
syn match t2tTitleMark contained '=\+\['me=e-1,he=e-1
syn match t2tTitleRef  contained '\[[^]]*\]$'
syn match t2tTitle '^\s*\(=\{1,5}\)[^=].*[^=]\1$'          contains=t2tTitleMark
syn match t2tTitle '^\s*\(=\{1,5}\)[^=].*[^=]\1\[[^]]*\]$' contains=t2tTitleMark,t2tTitleRef

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"URL EMAIL:
"syn case match
syn match t2tEmail '\<[A-Za-z0-9_.-]\+@\([A-Za-z0-9_-]\+\.\)\+[A-Za-z]\{2,4}\>\(?[A-Za-z0-9%&=+.@*_-]\+\)\='
syn match t2tUrl   '\<\(\(https\=\|ftp\|news\|telnet\|gopher\|wais\)://\([A-Za-z0-9._-]\+\(:[^ @]*\)\=@\)\=\|\(www[23]\=\.\|ftp\.\)\)[A-Za-z0-9%._/~:,=-]\+\>/*\(?[A-Za-z0-9/%&=+.@*_-]\+\)\=\(#[A-Za-z0-9%._-]\+\)\='
syn match t2tUrlLocal contained ' \([A-Za-z0-9%._/~,-]\+\|[A-Za-z0-9%._/~,-]*#[A-Za-z0-9%._-]\+\)\]'ms=s+1,me=e-1
syn match t2tUrlMark '\[[^]]\+ [^] ]\+\]' contains=t2tUrlLabel,t2tUrl,t2tEmail,t2tUrlLocal
syn match t2tUrlMarkImg '\[\[[[:alnum:]_,.+%$#@!?+~/-]\+\.\(png\|jpe\=g\|gif\|eps\|bmp\)\] [^] ]\+\]' contains=t2tUrl,t2tEmail,t2tUrlLocal,t2tImg
syn match t2tUrlLabel contained '\[[^]]\+ 'ms=s+1,me=e-1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FONT BEAUTIFIERS:
"underline: a leading/trailing blank makes sense
syn match   t2tUnderline  '__[^_].\{-}__'hs=s+2,he=e-2
syn match   t2tItalic     '//[^/[:blank:]].\{-}//'hs=s+2,he=e-2 contains=t2tUrlMark
syn match   t2tBold       '\*\*[^*[:blank:]].\{-}\*\*'hs=s+2,he=e-2
syn match   t2tBoldItalic '\*/[^/[:blank:]].\{-}/\*'hs=s+2,he=e-2
syn match   t2tMonospace  "`[^`]*`"hs=s+1,he=e-1
syn match   t2tPre1Line   '^--- .*$'hs=s+3
syn region  t2tPreFormat  start='^---$'hs=s+3 end='^---$'he=e-3

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TABLE:
syn match   t2tTable     '^ *||\=[<:>]*\s.*' contains=t2tTableMark,t2tTableTab,t2tTableBar,t2tTableTit,@t2tBeautifiers,@t2tSpecial,t2tBlank,t2tTableSpecial
syn match   t2tTableMark    contained '^ *[^\t ]\+'
syn match   t2tTableTab     contained '\t'
syn match   t2tTableBar     contained ' |'
syn match   t2tTableSpecial contained '\\|'
syn match   t2tTableTit     contained '^ *||.*' contains=t2tTableMark,t2tTableTab,t2tTableBar,t2tTableSpecial

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MISC:
syn keyword t2tTodo    TODO FIXME XXX contained
syn match   t2tComment '^%.*$' contains=t2tTodo,t2tFoldMark
syn match   t2tNumber  '\<\d\+\([,.]\d\+\)\{,1}\>'
syn match   t2tPercent '\<\d\+\([,.]\d\+\)\{,1}%'
syn match   t2tBlank   '\s\+$'
syn match   t2tBar     '^\s*[_=-]\{20,}\s*$'
syn match   t2tQuote   '^\t\+'
syn match   t2tImg     '\[[[:alnum:]_,.+%$#@!?+~/-]\+\.\(png\|jpe\=g\|gif\|eps\|bmp\)\]'
"obsoleted comment prefix
syn match   t2tComment '^//.*$'  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MACROS:
syn match   t2tCommand '^%![a-z]*'
syn match   t2tMacro   '%%[a-z]\+'
syn match   t2tDate    '%%date\>\(([^)]*)\)\='

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FOLD:
syn match  t2tFoldMark '\({{{\|}}}\)$'
syn region t2tUserFold keepend transparent fold start='^%.\+{{{$' end='^%.*}}}$'
syn region t2tTitleFold transparent fold start='^\s*=[^=].*[^=]=$' end='\n\n\n\n'
"heavy-folding-users: uncomment the following to fold *every* subtitle areas
"syn region t2tTitleFoldDeep transparent fold start='^\s*\(=\{1,5}\)[^=].*[^=]\1$' end='\n\n\n\n'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"HEADERS AND SETTINGS:
"Headers are the first 3 lines
"Settings are special comments right after the headers
"Settings ends on a no-comment line
syn match  t2tSettings     contained '^%\s*\(Document \)\s*\(Encoding\|Toc\)\s*:'
syn match  t2tHeaderArea   contained '\%^.*\n.*\n.*$' contains=t2tComment,t2tDate
syn region t2tSettingsArea contained start='\%4l' end='^\%>3l[^%]'me=e-1 contains=t2tComment,t2tSettings
syn region t2tTopArea         start='\%^\s*\S' end='^[^%]'me=e-1 contains=t2tSettingsArea,t2tHeaderArea
syn region t2tNoHeaderTopArea start='\%^\s*$' end='^[^%]'me=e-1 contains=t2tComment,t2tSettings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" color groups
hi link t2t_Link     PreProc
hi link t2t_Special  Statement
hi link t2t_Delim    Identifier
hi link t2t_Pre      Type
"
" color definitions (specific)
hi t2tBar         term=bold        cterm=bold        gui=bold
hi t2tBold        term=bold        cterm=bold        gui=bold
hi t2tItalic      term=italic      cterm=italic      gui=italic
hi t2tUnderline   term=underline   cterm=underline   gui=underline
hi t2tQuote       term=reverse     cterm=reverse     gui=reverse
hi t2tBoldItalic  term=bold,italic cterm=bold,italic gui=bold,italic
hi t2tComment     ctermfg=brown    guifg=brown
hi t2tTableTab    ctermbg=cyan     guibg=cyan
hi t2tTitle       gui=bold guifg=grey guibg=black
"
" color definitions (using Vim defaults)
"hi link t2tTitle        Error
hi link t2tBlank        Error
hi link t2tNumber       Number
hi link t2tPercent      Number
hi link t2tCommand      Special
hi link t2tFoldMark     Special
hi link t2tTableSpecial Special
hi link t2tTodo         Todo
hi link t2tHeaderArea   String
hi link t2tSettings     Special
hi link t2tUrlMark      t2t_Delim
hi link t2tUrlMarkImg   t2t_Delim
hi link t2tUrlLabel     t2t_Delim
hi link t2tTableTit     t2t_Delim
hi link t2tTableMark    t2t_Delim
hi link t2tTableBar     t2t_Delim
hi link t2tEmail        t2t_Link
hi link t2tUrl          t2t_Link
hi link t2tUrlLocal     t2t_Link
hi link t2tTitleRef     t2t_Link
hi link t2tDate         t2t_Special
hi link t2tImg          t2t_Special
hi link t2tList         t2t_Special
hi link t2tDefListId    t2t_Special
hi link t2tMacro        t2t_Special
hi link t2tDefList      NONE
hi link t2tTitleMark    NONE
hi link t2tPreFormat    t2t_Pre
hi link t2tPre1Line     t2t_Pre
hi link t2tMonospace    t2t_Pre
"
let b:current_syntax = 'txt2tags'
" vim:tw=0:et
