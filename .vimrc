set list
set ts=4
set tw=79
set number
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme delek
set background=dark
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight ColorColumn ctermbg=gray

let perl_sub_signatures = 1

set showbreak=↪\
"set listchars=tab:▸\ ,eol:¬,trail:~,extends:>,precedes:<,nbsp:•
set list lcs=tab:»·,eol:¬,trail:·
hi SpecialKey cterm=NONE ctermfg=grey gui=NONE guifg=#000066

"hi SpecialKey ctermfg=grey guifg=grey70 guibg=grey
"set termguicolors
"highlight SpecialKey guifg=#333333 guibg=#111111

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
