let plugin_settings = '~/.config/nvim/settings'

for fpath in split(globpath(plugin_settings, '*.vim'), '\n')
  execute 'source' fpath
endfor
