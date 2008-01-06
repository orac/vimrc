" Markdown ftplugin
" Language: Markdown (ft=markdown)
" Maintainer: Daniel Hulme <st@istic.org>
" Last Change: 2007 November 12
"
" Installed As: vim/ftplugin/markdown.vim
if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1
setl spell
setl tw=80
setl complete=.,kspell
