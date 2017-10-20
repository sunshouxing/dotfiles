let vimscripts = '~/.vim/scripts'

for fpath in split(globpath(vimscripts, '*.vim'), '\n')
  execute 'source' fpath
endfor
