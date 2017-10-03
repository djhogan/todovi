function! todo#toggle_checkbox()
  let l:line = getline('.')
  if l:line =~ '^\[ \]'
    execute "normal :s/ /-/\<CR>\<C-o>:noh\<CR>"
  elseif l:line =~ '^\[-\]'
    execute "normal :s/-/x/\<CR>\<C-o>:noh\<CR>"
  elseif l:line =~ '^\[x\]'
    execute "normal :s/x/ /\<CR>\<C-o>:noh\<CR>"
  endif
endfunction

function! todo#get_priority(i, l)
  return [matchstr(a:l, ':\zs.\ze:'), a:l]
endfunction

function! todo#sort_by_priority(r)
  if getline('.') !~ '^\['
    return
  endif
  let l:line1 = search('^\[\@!', 'bW')
  let l:line2 = search('^\[\@!', 'W')
  if l:line1 != 1
    let l:line1 = l:line1 + 1
  endif
  if l:line2 == 0
    let l:line2 = line('$')
  else
    let l:line2 = l:line2 - 1
  endif
  if a:r == 1
    let l:flag = "!"
  else
    let l:flag = ""
  endif
  execute l:line1 . "," . l:line2 . "sort" . l:flag
endfunction

nnoremap <Leader>x :call todo#toggle_checkbox()<CR>
nnoremap <Leader>s :call todo#sort_by_priority(0)<CR>
nnoremap <Leader>r :call todo#sort_by_priority(1)<CR>
