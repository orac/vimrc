" Cg/HLSL ftplugin
" Language: Cg or HLSL (ft=cg)
" Maintainer: Daniel Hulme <st@istic.org>
" Last Change: 2008 May 27
" Installed As: vim/ftplugin/cg.vim
if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

setl cin
setl sw=4

let b:undo_ftplugin = "setl cin< sw<"
