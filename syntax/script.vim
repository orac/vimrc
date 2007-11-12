" Acting script highlighting, based on IRC log formats
" Language: scripts for Shadowburst
" Maintainer: Daniel Hulme <st@istic.org>
" Author: Daniel Hulme
" Version: 0.1

if exists('b:current_syntax') && b:current_syntax =~ 'script'
  finish
endif

let s:cpo_save = &cpo
try
  set cpo&vim

  " start of actual stuff
  syn case ignore

  syn region scriptTitle start=/^==[^=]/ end=/==$/ oneline
  hi def link scriptTitle Error
  syn region scriptSays start=/^\s*</ end=/>/ oneline
  hi def link scriptSays Identifier
  syn region scriptAction start=/^\*[^\*]/ end=/$/ contains=@scriptMarkup keepend
  hi def link scriptAction PreProc
  syn region scriptScene matchgroup=scriptScene start=/^\s*\*\*\*\?/ end=/$/ contains=@scriptMarkup keepend
  hi def link scriptScene Constant
  syn region scriptAct matchgroup=scriptAct start=/^-!-/ end=/$/ contains=@scriptMarkup keepend
  hi def link scriptAct Statement

  syn cluster scriptMarkup contains=scriptStars,scriptSlashes,scriptChan,scriptEmu
  syn region scriptBold start=/\W\*/ms=s+1 end=/\*\W/me=e-1 oneline display
  hi def link scriptBold Type
  syn region scriptItalic start=/\W\//ms=s+1 end=/\/\W/me=e-1 oneline display
  hi def link scriptItalic Underlined

  " end of actual stuff

  if !exists('b:current_syntax')
    let b:current_syntax = 'script'
  else
    let b:current_syntax = b:current_syntax.'.script'
  endif
finally
  let &cpo = s:cpo_save
  unlet s:cpo_save
endtry

" vim:et sw=2 sts=2:
