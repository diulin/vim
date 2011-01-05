" ----------------------------------------------------------------------------------------------------
" @file         settings.vim
" @description  Global settings
" @author       Андрій Діулін (diulin@gmail.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

set nocompatible
set visualbell
set noerrorbells
set guioptions="ra" "for *really* hard ones: no menu, no toolbar...
set diffopt+=vertical,filler,foldcolumn:3
set iminsert=0
set hlsearch
set nowrap
set ignorecase
set autowriteall
set autoread
set infercase
set wildmenu
set ruler
set autoindent
set modeline
set lz
set ffs=unix,dos,mac
set tabstop=2
set shiftwidth=2
set softtabstop=2
set formatoptions=qrn1
set textwidth=80
set scrolloff=3
set sidescrolloff=3
set cursorline
set backupdir=~/vim~
set directory=~/vim~
set history=2000
set keymap=russian-jcukenwin
set statusline=%k%f\ [%M%R%H%W%Y]%=%l,%c\ %p%%
""Show (partial) command in the last line of the screen.
""In Visual mode the size of the selected area is shown:
set showcmd
set wildmode=longest:full
set hidden
set mouse=
set mousehide
set iskeyword=@,48-57,_,128-167,?-?
"" cyrillic letters
set isf+=224-255

"
""...Oh, and man? never ever let Vim write a backup file! They did that in the 70?s. Use modern ways for tracking your changes, for God?s sake.
set nobackup
set noswapfile
set ttyfast

""	The value of this option influences when the last window will have a
""	status line:
set laststatus=2
""set relativenumber
""
"" undo option
set undofile
set undodir=~/vim~/undo
set undolevels =1000 "maximum number of changes that can be undone
set undoreload =10000 "maximum number lines to save for undo on a buffer reload
au BufWritePre /tmp/* setlocal noundofile

set keywordprg=:help

let mapleader = ","
let maplocalleader = ","
let g:xml_syntax_folding = 1
"set foldmethod=syntax
"let g:utl_config_highl="off"
"
"" DirDiff
let g:DirDiffDynamicDiffText = 1
let g:DirDiffExcludes = ".hg,CVS,*.class,*.exe,.*.swp"

let mapleader = ","
let maplocalleader = ","

"" DirDiff
let g:DirDiffDynamicDiffText = 1
let g:DirDiffExcludes = ".hg,CVS,*.class,*.exe,.*.swp"



