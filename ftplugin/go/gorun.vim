function! s:gorun(...) abort
  let l:cmd = printf('go run %s', expand('%'))
  if !empty(a:000)
    let l:cmd .= ' ' . join(map(copy(a:000), 'shellescape(v:val)'), ' ')
  endif
  exec 'terminal' l:cmd
endfunction

command! -nargs=* -buffer GoRun call s:gorun(<f-args>)
