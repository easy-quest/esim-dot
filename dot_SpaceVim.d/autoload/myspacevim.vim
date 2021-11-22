function! myspacevim#before() abort
    lua << EOF
    local opt = requires('spacevim.opt')
    opt.enable_projects_cache = false
    opt.enable_statusline_mode = true
EOF
endfunction

" function! myspacevim#before() abort
    " let g:neomake_c_enabled_makers = ['clang']
    " вы можете определить сопоставления в функции начальной загрузки
    " например, используйте kj для выхода из режима вставки.
    " inoremap kj <Esc>
" endfunction

function! myspacevim#after() abort
  " вы можете удалить привязку ключей в функции bootstrap_after
  iunmap kj
endfunction
