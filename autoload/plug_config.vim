function! plug_config#pending_install()
  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
    PlugInstall

    if has('nvim')
      UpdateRemotePlugins
    endif
  endif
endfunction
