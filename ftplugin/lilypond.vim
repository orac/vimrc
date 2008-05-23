" LilyPond filetype plugin
" Language:     LilyPond (ft=ly)
" Maintainer:   Heikki Junes <hjunes@cc.hut.fi>
" Last Change:  2004 March 1
" Local changes by DH; details in git
"
" Installed As:	vim/ftplugin/lilypond.vim
" Uses Generated File:	vim/syntax/lilypond-words.el
"
" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

setlocal autoindent
setlocal shiftwidth=2
"
" some handy key mappings
"
" <F4>  save & make and play midi
map <buffer> <F4> :w<Return>:se makeprg=lilypond\ -m\ '%<'<Return>:make<Return>:!timidity %<.midi<Return>
"
" <F5>  save & make dvi, midi, ps
map <buffer> <F5> :w<Return>:se makeprg=lilypond\ '%<'<Return>:make<Return>
"
" <F6>  view ps
map <buffer> <F6> :!xpdf '%<'.pdf &<Return>
"
" <F10> menu
source $VIMRUNTIME/menu.vim
setlocal wildmenu
setlocal cpo-=<
setlocal wcm=<C-Z>
map <buffer> <F10> :emenu <C-Z>
"
" Completions in Insert/Replace-mode with <Ctrl-N>
setlocal dictionary-=$VIM/syntax/lilypond-words dictionary+=$VIM/syntax/lilypond-words
setlocal complete-=k complete+=k
"
setlocal showmatch
