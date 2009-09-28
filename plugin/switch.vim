function s:Switch()
    let l:oldext = expand('%:e')
    if l:oldext == 'cpp'
        let l:extension = 'h'
    elseif l:oldext == 'h'
        let l:extension = 'cpp'
    else
        throw "Unable to pick alternate file for type"
    endif
    exe "find %:t:r.".l:extension
endfunc

command -nargs=0 Switch call s:Switch()
