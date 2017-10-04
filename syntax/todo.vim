" runtime! syntax/markdown.vim

runtime! syntax/html.vim
unlet b:current_syntax

" TODO backward compatibility (see vim-markdown)

syn match todoChkBx /^\s*\[[ \-x]\]!*/
syn match htmlH1 /^# .*$/
syn match htmlH2 /^## .*$/
syn match htmlLink /#\w\+/

highlight default link todoChkBx  Todo

let b:current_syntax = 'todo'
