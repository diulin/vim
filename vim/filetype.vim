" 1c filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.1[sc]	setfiletype 1c
augroup END

augroup filetypedetect
  au! BufRead,BufNewFile Форма.frm	setfiletype 1cform
augroup END

augroup filetypedetect
  au! BufRead,BufNewFile *.t2t	setfiletype txt2tags
augroup END

augroup filetypedetect
  au! BufRead,BufNewFile main setfiletype main
augroup END

augroup filetypedetect
  au! BufRead,BufNewFile *.arc setfiletype scheme
augroup END

augroup filetypedetect
  au! BufRead,BufNewFile *.asd setfiletype lisp
augroup END

augroup filetypedetect
  au! BufRead,BufNewFile *.cos setfiletype cos 
augroup END

augroup filetypedetect
  au! BufRead,BufNewFile *.cls setfiletype cls 
augroup END

