syntax match gitLogCommit +^commit \x\{40}+ display
syn region gitLogMerge start=/^Merge:/ end=/$/

syn region gitLogDiffStat keepend start=/ |\s\+\(Bin\|\d\+\) / end=/$/ contains=gitArrow,gitAdded,gitRemoved
syn region gitLogMessage keepend start=/^    / end=/$/ contains=@Spell
syn match gitLogAdded /+/ contained display
syn match gitLogRemoved /-/ contained display
syn match gitArrow / -> / contained display

syn include @Diff syntax/diff.vim
syn region gitLogDiff start=/^diff/rs=s end=/^commit/re=s-1,me=s-1 contains=@Diff

highlight default link gitLogCommit Statement
highlight default link gitLogMerge PreProc
hi gitLogAdded ctermfg=green guifg=green
hi gitLogRemoved ctermfg=red guifg=red
