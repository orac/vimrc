set encoding=utf8
filetype plugin indent on
syntax enable
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
runtime macros/justify.vim
runtime macros/matchit.vim

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

" Perl ftplugin
let perlpath = &g:path

" TeX ftplugin
let g:Tex_ViewRule_pdf='xpdf'
