" Git log ftplugin
" git://git.istic.org/vimrc.git
" Language: Git log (ft=git-log)
" Maintainer: Daniel Hulme <st@istic.org>
" Last Change: 2008 July 10
" Installed As: vim/ftplugin/git-log.vim
if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

setl nolist

let b:undo_ftplugin = "setl list<"
