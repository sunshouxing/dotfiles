" => ctrl: {{{
  let g:ctrlp_map = '<leader>ff'
  let g:ctrlp_cmd = 'CtrlP'
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_root_markers = ['package.json']
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip
  let g:ctrlp_custom_ignore = '\v[\/](node_modules|bower_components|dist)|(\.(git|svn|tmp|hg|idea))$'
" }}}
