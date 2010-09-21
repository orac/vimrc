" from default vimrc
map! <xHome> <Home>
map! <xEnd> <End>
vnoremap p :let current_reg = @"gvdi=current_reg
map <xHome> <Home>
map <xEnd> <End>

" find and close the/a help window
function s:helpclose()
	let l:helpnum = 0
	windo if &buftype == 'help' | let l:helpnum = winnr() | endif
	if l:helpnum != 0
		exe l:helpnum . 'wincmd w'
		close
	endif
endfunc

nnoremap <F1> :call <SID>helpclose()<CR>
nnoremap <C-F1> :pcl<CR>

" Tagexplorer plugin
nnoremap <silent> <F2> :Tlist<Enter>

nnoremap <silent> <F3> :nohlsearch<Enter>
inoremap <silent> <F3> :nohlsearch<Enter>

" switch to other file
nnoremap <silent> <F4> :Switch<Enter>

nnoremap <F5> :make<Enter>
nnoremap <S-F5> :!sudo make install<Enter>

" re-break paragraph under cursor
nnoremap <F6> gwap

" put an undo point and re-break current line
inoremap <F6> ugww<Right>

" :tn and :cn are too much typing
nnoremap <silent> <F7> :tn<Enter>
nnoremap <silent> <S-F7> :tprev<Enter>
nnoremap <silent> <F8> :cn<Enter>
nnoremap <silent> <S-F8> :cprev<Enter>
nnoremap <silent> <C-F8> :ccl<Enter>

nnoremap <Space> <PageDown>
vnoremap <Space> <PageDown>
nnoremap <BS> <PageUp>
vnoremap <BS> <PageUp>

" use FuzzyFinder
nnoremap <silent> <Leader>t :FufTag<CR>
nnoremap <silent> <Leader>b :FufBuffer<CR>

" split lines (opposite of J)
nnoremap S m'a<CR><Esc>==`'

" add an undo point before pasting
inoremap  u
inoremap <MiddleMouse> u<MiddleMouse>

" make ^l act like it does in normal mode in insert mode
inoremap  

" paste with current indent plus 1
" should work with registers too, but this is entirely by accident
nnoremap [p ]p>']
nnoremap [P ]P>']

cnoremap  "
cnoremap  

" deprecate these unnecessary maps
nnoremap [f :echo "Use CTRL-W f instead, you retard."<CR>
nnoremap [F :echo "Use CTRL-W F instead, you retard."<CR>

" swap : and ; (very experimental)
nnoremap ; :
nnoremap : ;
