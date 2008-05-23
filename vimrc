set encoding=utf8
syntax enable
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
runtime macros/justify.vim
runtime macros/matchit.vim
runtime indent.vim

" key maps
map! <S-Insert> <MiddleMouse>
map! <xHome> <Home>
map! <xEnd> <End>
vnoremap p :let current_reg = @"gvdi=current_reg
map <S-Insert> <MiddleMouse>
map <xHome> <Home>
map <xEnd> <End>
nnoremap <F1> :ptag <CR>
nnoremap <F2> :Tlist<Enter>
nnoremap <F3> :nohlsearch<Enter>
inoremap <F3> :nohlsearch<Enter>
nnoremap <F4> :b #<Enter>
nnoremap <F5> :make<Enter>
nnoremap <S-F5> :!sudo make install<Enter>
nnoremap <F6> gwap
inoremap <F6> gww<Right>
"imap <F5> :call strftime("/* %m/%y dh */")
nnoremap <Space> <PageDown>
nnoremap <BS> <PageUp>
nnoremap S m'a<CR><Esc>`'

" general options
let &cpo=s:cpo_save
unlet s:cpo_save
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

" set up list mode to show dodgy whitespace
" it uses the SpecialKey hl group to show these characters
set list
set listchars=trail:_,tab:→·,nbsp:░

" search options
set hlsearch
nohlsearch
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

"tabbing
set shiftwidth=2
set expandtab
set smarttab

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

" general digraphs and abbrs
ia happenned happened
ia happenning happening
ia nn NULL
digraph `` 8220 " “ 66's
digraph '' 8221 " ” 99's
digraph `' 8216 " ‘ 6
digraph '` 8217 " ’ 9
digraph .. 8230 " … horiz ellipsis, RFC 1345 specifies ‥ two-dot leader instead
digraph -^ 8593 " ↑ upwards arrow, RFC 1345 also specifies <- -> -v for similar arrows
digraph EU 8364 " € Euro sign

" the following tall character digraphs are inspired by RFC1345 Iu and Il for
" upper- and lower-half integral sign ⌠ ⌡
digraph Im 9134 " ⎮ integral extension
digraph (u 9115 " ⎛ left paren upper hook
digraph (m 9116 " ⎜ left paren extension
digraph (l 9117 " ⎝ left paren lower hook
digraph )u 9118 " ⎞ right paren upper hook
digraph )m 9119 " ⎟ right paren extension
digraph )l 9120 " ⎠ right paren lower hook
digraph [u 9121 " ⎡ left square bracket upper corner
digraph [m 9122 " ⎢ left square bracket extension
digraph [l 9123 " ⎣ left square bracket lower corner
digraph ]u 9124 " ⎤ right square bracket upper corner
digraph ]m 9125 " ⎥ right square bracket extension
digraph ]l 9126 " ⎦ right square bracket lower corner
digraph {u 9127 " ⎧ left curly bracket upper hook
digraph {m 9128 " ⎨ left curly bracket middle piece
digraph {l 9129 " ⎩ left curly bracket lower hook
digraph }u 9127 " ⎫ left curly bracket upper hook
digraph }m 9128 " ⎬ left curly bracket middle piece
digraph }l 9129 " ⎭ left curly bracket lower hook
digraph {} 9136 " ⎰ upper left or lower right curly bracket section
digraph }{ 9137 " ⎱ upper right or lower left curly bracket section

" maths-related digraphs and abbrs
digraph := 8788 " ≔ colon equals
ia ::= ⩴
ia -/-> ↛
ia =/=> ⇏
ia \|> ↦
ia \|- ⊢
ia -\| ⊣
ia \|= ⊨
ia \|\|- ⊩
ia \|\|\|- ⊪
ia \|\|= ⊫
ia \|/- ⊬
ia \|/= ⊭
ia \|\|/- ⊮
ia \|\|/= ⊯

digraph [- 8261 " ⁅ bracket with quill
digraph -] 8262 " ⁆ closing bracket with quill
digraph [[ 12314 " 〚 semantic (double) bracket
digraph ]] 12315 " 〛 closing semantic bracket

" fold expr works like fdm=indent but includes the last non-indented line with
" the indented fold
set foldexpr=max(\[indent(v:lnum+1),indent(v:lnum)\])

" netrw
let g:netrw_altv=1

" Doxygen
let g:load_doxygen_syntax=1

" Perl ftplugin
let perlpath = &g:path

" TeX ftplugin
let g:Tex_ViewRule_pdf='xpdf'
