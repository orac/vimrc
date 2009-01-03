set encoding=utf8
filetype plugin indent on
syntax enable
set nocp
runtime macros/justify.vim
runtime macros/matchit.vim

" key maps
map! <xHome> <Home>
map! <xEnd> <End>
vnoremap p :let current_reg = @"gvdi=current_reg
map <xHome> <Home>
map <xEnd> <End>

" open preview window for keyword under cursor
nnoremap <F1> :ptag <CR>
nnoremap <F2> :Tlist<Enter>
nnoremap <F3> :nohlsearch<Enter>
inoremap <F3> :nohlsearch<Enter>

" switch to alternate buffer
nnoremap <F4> :b #<Enter>
nnoremap <F5> :make<Enter>
nnoremap <S-F5> :!sudo make install<Enter>

" re-break paragraph under cursor
nnoremap <F6> gwap

" put an undo point and re-break current line
inoremap <F6> ugww<Right>

"imap <F5> :call strftime("/* %m/%y dh */")
nnoremap <Space> <PageDown>
nnoremap <BS> <PageUp>

" split lines (opposite of J)
nnoremap S m'a<CR><Esc>`'

" add an undo point before pasting
inoremap  u
inoremap <MiddleMouse> u<MiddleMouse>

" make ^l act like it does in normal mode in insert mode
inoremap  

" wrap selected block in braces and indent
vnoremap } >g'<O{<Esc>g'>o}<Esc>
" unblockify block
nnoremap { [{<%']dd''dd''

" like gf but in a new window
nnoremap [f :sp<Enter>gf
nnoremap [F :sp<Enter>gF

" general options
set backspace=indent,eol,start
set helplang=en
set history=50
set scrolloff=6
"set scrolljump=6
set mouse=a
set path=,.,**
set splitright
set modeline
set nrformats=hex,alpha
set formatoptions=tcroql
set autoread
" thanks to http://www.eseth.org/filez/prefs/vimrc for drawing my attention to
" these:
set nojs
set wildmode=longest,full
set wildmenu
" these two make wmnu operate in a sane way
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

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
nohlsearch " because I hate starting Vim and getting the last search from my previous session hl'ed
set incsearch
set ignorecase smartcase

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
set shiftwidth=2
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
set viminfo='20,\"50

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
set guioptions-=T
set guifont=Neep\ Alt\ 8
"set mousemodel=popup
colorscheme koehler

" speling
ia happenned happened
ia happenning happening
ia nn NULL

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
