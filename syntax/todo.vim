" runtime! syntax/markdown.vim

runtime! syntax/html.vim
unlet b:current_syntax

" 
" if version < 508
"   command! -nargs=+ HtmlHiLink hi link <args>
" else
"   command! -nargs=+ HtmlHiLink hi def link <args>
" endif

syn match todoChkBx /^\[[ xX]\]/
syn match htmlH1 /^# .*$/
syn match htmlH2 /^## .*$/
syn match htmlLink /#\w\+/

highlight default link todoChkBx  Todo

let b:current_syntax = 'todo'
