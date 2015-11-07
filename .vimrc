""" rjbs: Ricardo SIGNES
""" vimrc
""" $Id: /rjbs/conf/vim/vimrc 137 2006-01-05T01:03:18.468736Z rjbs  $

""  set vim options
set nohls
set autoindent           " carry over indenting from previous line
set backspace=2          " allow backspace beyond insertion point
"set background=dark      " console bg is dark
set clipboard+=unnamed   " put yanks/etc on the clipboard
set comments=b://,b:#    " by default allow C++ (JS) and generic unixy comments
set com+=s1:/*,mb:*,ex:*/  " ...and also C-style comments
set copyindent           " make autoindent use the same characters to indent
set directory-=.         " don't store temp files in cwd
set encoding=utf-8       " unicode
set expandtab            " spaces, not tabs! (this decision: 2005-06-02)
set foldlevelstart=99    " start with all folds open
set foldopen-=search     " don't open folds when you search into them
set foldopen-=undo       " don't open folds when you undo stuff
set formatoptions=tcqr2l " t - autowrap normal text
                         " c - autowrap comments and re-insert comment leader
                         " q - allow gq to reformat comments
                         " r - re-insert comment leader on newline
                         " 2 - indent based on second line of para, not first
                         " l - don't break long lines that were long before ins
set guioptions+=f        " don't fork if run under X11!  sheesh.
set hidden               " hide, don't close, undisplayed buffers
set laststatus=2         " always show status line
set pastetoggle=<F2>     " F2 to toggle paste
set ruler                " display cursor position
set showcmd              " show command-in-progress
set shortmess=at         " shortens messages to avoid 'press a key' prompt 
set shiftwidth=2         " two spaces per sw
set softtabstop=2        " make two spaces act like tabs
set timeout              " allow keys to timeout
set title                " do set the xterm title (see 'titleold', set below)
set tabstop=2            " The One True Tab (as of latest revision)
set textwidth=79         " set normal border; can unset for coding
set wildignore+=*/CVS/   " don't try to descend into CVS directories
set wildignore+=*/.svn/   " don't try to descend into svn directories

filetype plugin on       " use ftplugins, mostly for those in ~
runtime macros/matchit.vim " pulled from macros dir to avoid requiring install
syntax on                " enable syntax highlighting
"set syntax=mirrorshades

nnoremap <F5> :set invpaste paste?<Enter>
imap <F5> <C-O><F5>
set pastetoggle=<F5>

if has("win32")
	let Tlist_Ctags_Cmd='C:\Progra~1\ctags\ctags.exe'
	map <M-Space> :simalt ~<CR>
elseif has("macunix")
	" the Carbon clipboard is screwed up, and messes up newlines
	set cb=
endif

" exec'd because ... could it work otherwise?
exec "set titleold=" . matchstr(hostname(), "^[^.]\\+")

""" use fonts that don't make my eyes bleed

if has("gui_running")
	if has("macunix")
		set guifont=ProFont:h9
		" this patch isn't in CVS, and I stopped applying it recently
		" set transparency=240
	elseif has("win32")
		set guifont=ProFontWindows:h11:b:cANSI,Lucida_Console:h11:b:cANSI
	elseif has("x11")
		set guifont=-jmk-neep-bold-r-normal--15-*-*-*-*-*-*-*
	endif
endif

""" act more like a pager when invoked as one

if (v:progname == "view")
  nmap <Space> <PageDown>
	nmap b       <PageUp>
endif

""" configure status line

function ModifiedFlag()
	if (&modified)
		return "*"
	else
		return " "
	endif
endfunc

set statusline=[%n]\ %{ModifiedFlag()}%f\ %=%h%r%w\ (%v,%l)\ %P\ 

"""  set various script options
" perl syntax
"let perl_fold=1         " allow perl folding
let perl_include_pod   = 1
let perl_extended_vars = 1

" perl_synwrite
silent call system("perl -e0 -MVi::QuickFix")
let perl_synwrite_qf = ! v:shell_error   " use Vi::QuickFix if it can be used

"iabbr --r -- rjbs, <C-R>=strftime("%Y-%m-%d")<CR>
