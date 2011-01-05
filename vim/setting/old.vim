""for old versions
"if version >= 700 
"  set enc=utf-8
"  set fenc=cp1251
"  set fencs=utf-8,cp1251
"  "set fencs=utf-8,cp1251,koi8-r,cp866,ucs-2
"else
"  set enc=cp1251
"endif
"
"if version >= 730 
"  set undodir=~/vim~/undo,~/vim~
"endif
"
""" vimclojure
""let vimclojure#NailgunClient = "/home/and/src/vimclojure/client/ng"
""let vimclojure#WantNailgun = 1 
""let g:clj_want_folding =1
""
""" If it exists and is nonzero, then Clojure's builtin functions are highlighted.
""" This useful to distuingish macros and special forms from functions.
""let vimclojure#HighlightBuiltins = 1
""
"""If it exists and is nonzero, then Clojure-Contrib's functions
"""are highlighted. (Currently incomplete)
"""let g:clj_highlight_contrib=1
""
""" If it exists and is nonzero, then differing levels of
""" parenthesisation will receive different highlighting.
""let vimclojure#ParenRainbow =1
""" ---------------------------------------------------------------------------
"""  Automagic Clojure folding on defn's and defmacro's
"""
""function! GetClojureFold()
""      if getline(v:lnum) =~ '^\s*(defn.*\s'
""            return ">1"
""      elseif getline(v:lnum) =~ '^\s*(defmacro.*\s'
""            return ">1"
""      elseif getline(v:lnum) =~ '^\s*(defmethod.*\s'
""            return ">1"
""      elseif getline(v:lnum) =~ '^\s*$'
""            let my_cljnum = v:lnum
""            let my_cljmax = line("$")
""
""            while (1)
""                  let my_cljnum = my_cljnum + 1
""                  if my_cljnum > my_cljmax
""                        return "<1"
""                  endif
""
""                  let my_cljdata = getline(my_cljnum)
""
""                  " If we match an empty line, stop folding
""                  if my_cljdata =~ '^$'
""                        return "<1"
""                  else
""                        return "="
""                  endif
""            endwhile
""      else
""            return "="
""      endif
""endfunction
""
""function! TurnOnClojureFolding()
""      setlocal foldexpr=GetClojureFold()
""      setlocal foldmethod=expr
""endfunction
""
""autocmd FileType clojure call TurnOnClojureFolding()
""
""

