set encoding=utf8
call pathogen#infect()
filetype plugin indent on
syntax enable
set nocp
runtime macros/matchit.vim

" general options
set hidden
set backspace=indent,eol,start
set helplang=en
set history=50
"set scrolljump=6
set mouse=a
set path=,.,**
set splitright
set modeline
set nrformats=hex,alpha
set formatoptions=tcroql
set autoread
set complete=.,w,b,u
set nosol
set dict=/usr/share/dict/words
" thanks to http://www.eseth.org/filez/prefs/vimrc for drawing my attention to
" these:
set nojs
set wildmode=longest,full
set wildmenu
" these two make wmnu operate in a sane way
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

set cot=menu,preview,longest

" add command to write and reopen
command -nargs=0 -bang W w<bang> | e

" command to trim trailing whitespace
command -nargs=0 -range=% TrimSpace <line1>,<line2>s/\s\+$// | noh | normal 

" set up list mode to show dodgy whitespace
" it uses the SpecialKey hl group to show these characters
set list
set listchars=trail:_,tab:→·,nbsp:░

" search options
set hlsearch
set incsearch
set ignorecase smartcase

" set scrolloff usefully
func! SetScrollOff()
  if (winheight(0) >= 30)
    set scrolloff=6
  elseif (winheight(0) >= 18)
    set scrolloff=2
  else
    set scrolloff=0
  endif
endfunc

au VimResized,WinEnter * call SetScrollOff()
call SetScrollOff()

" printing options
set printexpr=PrintFile(v:fname_in)
func! PrintFile(fname)
  call system('lp ' . a:fname)
  call delete(a:fname)
  return v:shell_error
endfunc
set printencoding=utf-8
set printoptions=paper:a4,left:10mm,right:10mm,top:14mm,bottom:14mm,duplex:long,collate:y
set printfont=Neep\ Alt\ 10
set printheader=%<%f%h%m%=Page\ %N

"tabbing and indentation
set shiftwidth=4
set expandtab
set smarttab
set cino=(0,W1s,m1,g1s,h0
" (0 vertically aligns things inside unclosed parens
" Ws turns off (0 when the unclosed paren is the last thing on a line
" m1 aligns closing parens like closing braces
" g1s indents `public:` &c. by a shiftwidth
" h0 aligns things after `public:` &c. with the `public:`

set suffixes=.bak,~,.swp,.swo,.o,.info,.aux,.log,.dvi,.ps,.pdf,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png
set termencoding=utf8
set viminfo='20,s2,%15,h

" spell-checker options
set spelllang=en_gb
set spellcapcheck=
set spellfile=$HOME/.vim/spell/en.utf-8.add
"set spell

" visual options
set linebreak
set ruler
set showmatch
set showcmd
set guioptions-=T guioptions-=m
set guifont=Neep\ Alt\ 8
au GuiEnter * set lines=42
"set mousemodel=popup
colorscheme koehler

" I find the default fold colours in koehler hard to read
hi Folded term=standout ctermfg=11 ctermbg=8 guifg=Blue guibg=DarkGrey

if exists('+rnu')
	set rnu
	hi LineNr guifg=gray ctermfg=gray
	au BufReadPost quickfix setl nornu
endif

" speling
ia happenned happened
ia happenning happening
ia nn NULL

so <sfile>:h/maps.vim
so <sfile>:h/digraphs.vim

" fold expr works like fdm=indent but includes the last non-indented line with
" the indented fold
set foldexpr=max(\[indent(v:lnum+1),indent(v:lnum)\])

" netrw
let g:netrw_altv=1

" Doxygen
let g:load_doxygen_syntax=1
let g:doxygen_enhanced_colour=1
let doxygen_end_punctuation = '[.?]'

" Perl ftplugin
let perlpath = &g:path
let perl_include_pod = 1

" TeX ftplugin
let g:Tex_ViewRule_pdf='xpdf'
