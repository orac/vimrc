syntax match gitLogCommit +^commit \x\{40}+
syn region gitLogMerge start=/^Merge:/ end=/$/

syn region gitLogDiffStat keepend start=/ |\s\+\(Bin\|\d\+\) / end=/$/ contains=gitAdded,gitRemoved
syn region gitLogMessage keepend start=/^    / end=/$/ contains=@Spell
syn match gitLogAdded /+/ contained
syn match gitLogRemoved /-/ contained

highlight default link gitLogCommit Statement
highlight default link gitLogMerge PreProc
hi gitLogAdded ctermfg=green guifg=green
hi gitLogRemoved ctermfg=red guifg=red
