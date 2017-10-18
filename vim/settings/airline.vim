" => airline {{{
  let g:airline_theme='solarized'
  let g:airline_solarized_bg='dark'
  let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#buffers_label = 'b'
  let g:airline#extensions#tabline#formatter = 'foo'
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  "let g:airline_powerline_fonts = 1

  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
" }}}
