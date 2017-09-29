" runtime! syntax/markdown.vim

" if version < 600
"   syntax clear
" elseif exists('b:current_syntax')
"   finish
" endif
" 
" if version < 508
"   command! -nargs=+ HtmlHiLink hi link <args>
" else
"   command! -nargs=+ HtmlHiLink hi def link <args>
" endif

syn match todoChkBx /test/

highlight default link todoChkBx  Todo

let b:current_syntax = 'todo'
