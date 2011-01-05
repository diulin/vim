" cos syntax file
" Language:	cos
" Maintainer:	Jim Self, jaself@ucdavis.edu
" Last change:	28 April 2001

" Remove any old syntax stuff hanging around
syn clear
syn sync    maxlines=1
syn sync    minlines=1
syn case    ignore

"errors
"syn match   cosError          contained /[^ \t;].\+/
"syn match   cosBadString 	/".*/
" Catch mismatched parentheses
syn match   cosParenError	/).*/
syn match   cosBadParen	/(.*/


" Line Structure
syn region  cosComment        contained start=/;/ end=/$/ contains=cosTodo
syn region  cosTodo   	contained start=/TODO/ start=/XXX/ start=/FIX/ end=/;/ end=/$/

syn match   cosLabel  	contained /^[%A-Za-z][A-Za-z0-9]*\|^[0-9]\+/ nextgroup=cosFormalArgs
syn region  cosFormalArgs	contained oneline start=/(/ end=/)/ contains=cosLocalName,","
syn match   cosDotLevel	contained /\.[. \t]*/

syn region  cosCmd		contained oneline start=/[A-Za-z]/ end=/[ \t]/ end=/$/ contains=cosCommand,cosPostCondition,cosError nextgroup=cosArgsSeg
syn region  cosPostCondition	contained oneline start=/:/hs=s+1 end=/[ \t]/re=e-1,he=e-1,me=e-1 end=/$/ contains=@cosExpr
syn region  cosArgsSeg	contained oneline start=/[ \t]/lc=1 end=/[ \t]\+/ end=/$/ contains=@cosExpr,",",cosPostCondition

syn match   cosLineStart      contained /^[ \t][. \t]*/ 
syn match   cosLineStart      contained /^[%A-Za-z][^ \t;]*[. \t]*/ contains=cosLabel,cosDotLevel 
syn region  cosLine		start=/^/ keepend end=/$/ contains=cosCmd,cosLineStart,cosComment

syn cluster cosExpr     	contains=cosVar,cosIntrinsic,cosExtrinsic,cosString,cosParen,cosOperator,cosBadString,cosBadNum,cosVRecord

syn match   cosVar		contained /\^=[%A-Za-z][A-Za-z0-9]*/ nextgroup=cosSubs
syn match   cosIntrinsic 	contained /$[%A-Za-z][A-Za-z0-9]*/ contains=cosIntrinsicFunc,cosSpecialVar nextgroup=cosParams
syn match   cosExtrinsic	contained /$$[%A-Za-z][A-Za-z0-9]*\(^[%A-Za-z][A-Za-z0-9]*\)\=/ nextgroup=cosParams

syn match   cosLocalName	contained /[%A-Za-z][A-Za-z0-9]*/

" Operators
syn match   cosOperator       contained "[_+\-*/=&#!'\\\]<>?@]"
syn match   cosOperator       contained "]]"
syn region  cosVRecord	contained start=/[= \t,]</lc=1 end=/>/ contains=cosLocalName,","

" Constants
syn region  cosString 	contained oneline start=/"/ skip=/""/ excludenl end=/"/ oneline
syn match   cosBadNum 	contained /\<0\d+\>/
syn match   cosBadNum 	contained /\<\d*\.\d*0\>/
syn match   cosNumber 	contained /\<\d*\.\d{1,9}\>/
syn match   cosNumber 	contained /\<\d+\>/

syn region  cosParen     	contained oneline start=/(/ end=/)/ contains=@cosExpr
syn region  cosSubs		contained oneline start=/(/ end=/)/ contains=@cosExpr,","
syn region  cosActualArgs	contained oneline start=/(/ end=/)/ contains=@cosExpr,","

" Keyword definitions -------------------
"-- Commands --
syn keyword cosCommand	contained B[reak] C[lose] D[o] E[lse] F[or] G[oto] H[alt] H[ang]
syn keyword cosCommand 	contained I[f] J[ob] K[ill] L[ock] M[erge] N[ew] O[pen] Q[uit]
syn keyword cosCommand 	contained R[ead] S[et] TC[ommit] TRE[start] TRO[llback] TS[tart]
syn keyword cosCommand 	contained U[se] V[iew] W[rite] X[ecute] 
syn keyword cosCommand 	contained while for

"  -- GT.M specific --
syn keyword cosZCommand 	contained ZA[llocate] ZB[reak] ZCOM[pile] ZC[ontinue] ZD[eallocate]
syn keyword cosZCommand 	contained ZED[it] ZG[oto] ZH[elp] ZL[ink] ZM[essage] ZP[rint]
syn keyword cosZCommand 	contained ZSH[ow] ZST[ep] ZSY[stem] ZTC[ommit] ZTS[tart]
syn keyword cosZCommand 	contained ZWI[thdraw] ZWR[ite]

"  -- DTM specific --
"syn keyword cosZCommand 	contained  zC[all] zET[rap] zHT[rap] zIT[rap] zK[ill] zNS[pace]
"syn keyword cosZCommand 	contained  zQ[uit] zS[ave] zSync zTrap zUnRead zUse zzDevStat 
"syn keyword cosZCommand 	contained  zzDOS zzErr zzKeyPut zzLog zzNaked zzSetKey zzSwitch

"-- Intrinsic Functions
syn keyword cosIntrinsicFunc	contained A[scii] C[har] D[ata] E[xtract] F[ind] FN[umber] G[et]
syn keyword cosIntrinsicFunc	contained J[ustify] L[ength] N[ame] N[ext] O[rder] P[iece]
syn keyword cosIntrinsicFunc	contained Q[uery] R[andom] S[elect] T[ext] T[ranslate] V[iew]

"----> DTM Trig functions
"syn keyword cosZInFunc	contained zAbs zArcCos zArcSin zArcTan  
"syn keyword cosZInFunc	contained zCos zCot zCSC zExp zLn zLog
"syn keyword cosZInFunc	contained zSec zSin zSqr zTan zPower

"----> DTM Bitstring functions
"syn keyword cosZInFunc	contained zBitAnd zBitCount zBitFind 
"syn keyword cosZInFunc	contained zBitGet zBitLen zBitNot zBitOr 
"syn keyword cosZInFunc	contained zBitSet zBitStr zBitXor 

"----> DTM Mouse functions --
"syn keyword cosZInFunc	contained zMouseInit zMouseReset zMouseInfo zMouseShow zMouseHide
"syn keyword cosZInFunc	contained zMouseReport zMouseXYMax zMouseSetInrpt zMouseReportI
"syn keyword cosZInFunc	contained zMouseReportM zMouseReportP zMouseReportR zMousePut 
"syn keyword cosZInFunc	contained zMouseGetSV zMouseSetSV zMouseExclude zMouseLimits 
"syn keyword cosZInFunc	contained zMousePointerT zMouseCursor zMouseSave zMouseRestore

"----> DTM other functions --
"syn keyword cosZInFunc	contained zCall zConvert zCvt zCRC zD[ate] 
"syn keyword cosZInFunc	contained zDev zEName zJob zLA[scii] zLC[har] 
"syn keyword cosZInFunc	contained zOLen zO[rder] zPrevious zR[eference] zRNext
"syn keyword cosZInFunc	contained zwA[scii] zWC[har] zX[ecute] zzDec zzEnv zzHex

" -- GT.M z-functions --
syn keyword cosZInFunc	contained ZD[ate] ZM[essage] ZPARSE ZP[revious] ZSEARCH ZTRNLNM 

" Special Variables
syn keyword cosSpecialVar	contained D[evice] H[orolog] I[O] J[ob] K[ey] P[rincipal]
syn keyword cosSpecialVar	contained S[torage] T[est] TL[evel] TR[estart] X Y	

"-- DTM specific --
"syn keyword cosZVar	contained zA zB zD[ate] zDepth zDev	
"syn keyword cosZVar	contained zDevClass zDevixXlate zDevixInterp
"syn keyword cosZVar	contained zDevR zDevTerm zDevType zE zEName 
"syn keyword cosZVar	contained zErr[or] zETrap zH[orolog] zIOS zIOT 
"syn keyword cosZVar	contained zJob zMode zName zNode zzNode	
"syn keyword cosZVar	contained zNSpace zPI zP[iece] zR[eference] 
"syn keyword cosZVar	contained zS[torage] zT[rap] zVer[sion] zX zY zzB
"syn keyword cosZVar	contained zzBreak zzCompat zzEnv zzErr zzJobName 
"syn keyword cosZVar	contained zzLicense zzNaked zzSwitch 	

"-- GT.M specific --
syn keyword cosZVar	contained ZCSTATUS ZDIR[ectory] ZEDIT ZEOF ZGBL[dir]
syn keyword cosZVar	contained ZIO ZL[evel] ZPOS[ition] ZPROMP[t] ZRO[utines]
syn keyword cosZVar	contained ZSO[urce] ZS[tatus] ZSYSTEM ZT[rap] ZVER[sion]

if !exists("did_cos_syntax_inits")
  let did_cos_syntax_inits = 1

  " The default methods for hilighting.  Can be overridden later
  hi! link cosCommand		Statement
  hi! link cosZCommand        PreProc
  hi! link cosIntrinsicFunc   Function
  hi! link cosZInFunc		Preproc
  hi! link cosSpecialVar      Function
  hi! link cosZVar		PreProc
  hi! link cosLineStart	Statement
  hi! link cosLabel		PreProc
  hi! link cosFormalArgs	PreProc
  hi! link cosDotLevel	PreProc
  hi! link cosCmdSeg		Special
  hi! link cosPostCondition	Special
  hi! link cosCmd		Statement
  hi! link cosArgsSeg		Special
  hi! link cosExpr		PreProc
  hi! link cosVar		Identifier
  hi! link cosParen           Special
  hi! link cosSubs            Special
  hi! link cosActualArgs      Special
  hi! link cosIntrinsic       Special
  hi! link cosExtrinsic	Special
  hi! link cosString		String
  hi! link cosNumber		Number
  hi! link cosOperator	Special
  hi! link cosComment		Comment
  hi! link cosError		Error
  hi! link cosBadNum		Error
  hi! link cosBadString	Error
  hi! link cosBadParen	Error
  hi! link cosParenError	Error

  hi! link cosTodo		Todo
endif

let b:current_syntax = "cos"

" vim: ts=8
