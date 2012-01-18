" I find the default fold colours in koehler hard to read
hi Folded term=standout ctermfg=11 ctermbg=8 guifg=Blue guibg=DarkGrey

func! Z1foldText()
	let line = getline(v:foldstart)
	let lineend = getline(v:foldend)
	" remove comments and foldmarkers
	let nocomments = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
	let nocommentsend = substitute(lineend, '/\*\|\*/\|{{{\d\=', '', 'g')
	let dashes = substitute(v:folddashes, '-', '|', 'g')
	return dashes . " " . nocomments . " …… " . nocommentsend
endfunc

set foldtext=Z1foldText()

" fold expr works like fdm=indent but includes the last non-indented line with
" the indented fold, for formats like
"
" here is some stuff
"      related to the above
"      should all be in one fold
"      la la la
" This will put all the above in a fold, but not this line.
set foldexpr=max(\[indent(v:lnum+1),indent(v:lnum)\])
