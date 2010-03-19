" from default vimrc
map! <xHome> <Home>
map! <xEnd> <End>
vnoremap p :let current_reg = @"gvdi=current_reg
map <xHome> <Home>
map <xEnd> <End>

" open preview window for keyword under cursor
nnoremap <F1> :ptag <CR>
nnoremap <C-F8> :pcl<CR>

" Tagexplorer plugin
nnoremap <F2> :Tlist<Enter>

nnoremap <F3> :nohlsearch<Enter>
inoremap <F3> :nohlsearch<Enter>

" switch to other file
nnoremap <F4> :Switch<Enter>

nnoremap <F5> :make<Enter>
nnoremap <S-F5> :!sudo make install<Enter>

" re-break paragraph under cursor
nnoremap <F6> gwap

" put an undo point and re-break current line
inoremap <F6> ugww<Right>

" :tn and :cn are too much typing
nnoremap <F7> :tn<Enter>
nnoremap <S-F7> :tprev<Enter>
nnoremap <F8> :cn<Enter>
nnoremap <S-F8> :cprev<Enter>
nnoremap <C-F8> :ccl<Enter>

nnoremap <Space> <PageDown>
nnoremap <BS> <PageUp>

" use FuzzyFinder
nnoremap <Leader>t :FufTag<CR>
nnoremap <Leader>b :FufBuffer<CR>

" split lines (opposite of J)
nnoremap S m'a<CR><Esc>`'

" add an undo point before pasting
inoremap  u
inoremap <MiddleMouse> u<MiddleMouse>

" make ^l act like it does in normal mode in insert mode
inoremap  

" deprecate these unnecessary maps
nnoremap [f :echo "Use CTRL-W f instead, you retard."<CR>
nnoremap [F :echo "Use CTRL-W F instead, you retard."<CR>

