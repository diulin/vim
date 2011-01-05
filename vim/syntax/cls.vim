" cls syntax file
" Language:	cls
" Maintainer:	Jim Self, jaself@ucdavis.edu
" Last change:	28 April 2001

" Remove any old syntax stuff hanging around
"if exists("b:current_syntax")
"  finish
"endif
"syn clear
"syn sync    maxlines=1
"syn sync    minlines=1
"syn case    ignore


"keyword definitions: {{{1
syn keyword tclCommand		after append apply array bgerror binary catch cd chan clock
"syn keyword clsStatement	Property
"syn keyword clsStatement	if else
"syn keyword clsStatement	while for until


" Strings and characters: {{{1
syn region clsString		start=/"/  skip=/\\\\\|\\"/  end=/"/

" Numbers: {{{1
syn match clsNumber		"-\=\<\d*\.\=[0-9_]\>"

" Comments: {{{1
syn region clsComment    start="/\*"  end="\*/" contains=clsTodo
syn match clsComment	"//.*$" contains=clsTodo
syn match clsDescription 	"^\s*///.*$" 

syn sync ccomment clsComment

" Conditionals: {{{1
syn keyword clsConditional    if else
syn keyword clsRepeat    for while until

syn sync ccomment clsComment



" Class: {{{1
syn region  clsClassDecl start=/^\s*Class\>/ end=/{/ms=s-1 contains=clsClassType,clsClass,clsClassTypeDecl,clsClassModifier 
syn keyword clsClass	Class contained
syn region  clsClassTypeDecl	start=/\[ClassType\s*=/ end=/]/ contains=clsClassTypeName,clsClassTypeWord
syn keyword clsClassTypeName	 Persistent Serial Registered Abstract Datatype CSP contained
syn keyword clsClassTypeName	 persistent serial registered abstract datatype csp contained
syn keyword clsClassModifier	 Extends extends  contained
syn keyword clsClassTypeWord   ClassType contained
" Property: {{{2
syn region  clsPropertyDecl start=/^\s*Property\>/ end=/;/ contains=clsProperty,clsPropertyType,clsPropertyInitialExpression,clsPropertyParam
syn keyword clsProperty	Property contained
syn match  clsPropertyType	/\c\s\+as\s\+[a-z0-9%.]\+/ contained 
syn region  clsPropertyParam 	start=/(/  end=/)/ contained 
syn keyword clsPropertyInitialExpression InitialExpression contained

" Parameter: {{{2
syn match   clsStructure	"^\s*Parameter\>"

" Highlighting: {{{1
"if !exists("did_cls_syntax_inits")
"  let did_cls_syntax_inits = 1

  " The default methods for hilighting.  Can be overridden later
	
  hi! link clsPropertyParam	PreProc	
  hi! link clsPropertyInitialExpression	PreProc	
  hi! link clsPropertyType	StorageClass	
  hi! link clsProperty		Structure
  hi! link clsPropertyDecl		Normal
  hi! link clsClassModifier		Preproc
  hi! link clsClassDecl		Normal
  hi! link clsStructure	Structure	
  hi! link clsCommand		Statement
  hi! link clsDescription	Preproc
  hi! link clsClass		Structure
  hi! link clsClassTypeName	StorageClass
  hi! link clsClassTypeWord	Preproc
  hi! link clsStorageClass		StorageClass
  hi! link clsConditional		Conditional
  hi! link clsRepeat	Repeat	
  hi! link clsComment		Comment
  hi! link clsStatement	Statement
  hi! link clsConditional	Conditional	
	hi! link clsStd		Special
"endif

"let b:current_syntax = "cls"

" vim:ts=2  fdm=marker
