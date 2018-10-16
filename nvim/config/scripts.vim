let vimscripts = '~/.config/nvim/scripts'

for fpath in split(globpath(vimscripts, '*.vim'), '\n')
  execute 'source' fpath
endfor
