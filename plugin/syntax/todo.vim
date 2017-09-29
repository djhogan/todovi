if version < 600
  so <sfile>:p:h/markdown.vim
else
  runtime! syntax/markdown.vim

  if exists('b:current_syntax')
    unlet b:current_syntax
  endif
endif

if version < 600
  syntax clear
elseif exists('b:current_syntax')
  finish
endif

syn match todoChkBx /test/

hi def link todoChkBx   Todo

let b:current_syntax = 'todo'

