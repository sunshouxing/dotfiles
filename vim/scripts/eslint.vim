function! Eslint()
    let a:current_file = expand("%")
    VimuxRunCommand("eslint " . a:current_file)
endfunction
