function! todo#toggle_checkbox()
  if getline('.') =~ '^\[x\]'
    execute "normal :s/x/ /\<CR>\<C-o>:noh\<CR>"
  elseif getline('.') =~ '^\[ \]'
    execute "normal :s/ /x/\<CR>\<C-o>:noh\<CR>"
  endif
endfunction

function! todo#sort_by_priority()
  let line1 = search('^#', 'b')
  let line2 = search('^#')
  let todo_list = getbufline(bufnr('%'), line1, line2)
  return todo_list
endfunction

nnoremap <Leader>x :call todo#toggle_checkbox()<CR>


