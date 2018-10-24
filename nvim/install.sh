#!/usr/bin/env bash

readonly VIM_CONF_DIR="$HOME/.config"
readonly VIM_SITE_DIR="$HOME/.local/share/nvim/site/autoload"
readonly TABLINE_FORMATTERS_DIR="$HOME/.config/nvim/plugged/vim-airline/autoload/airline/extensions/tabline/formatters"

cd $(dirname $(readlink -f "$BASH_SOURCE"))

#
# copy vim configs to vim config directory
#
mkdir -p ${VIM_CONF_DIR} && cp -r config ${VIM_CONF_DIR}/nvim

#
# install vim-plug and install vim plugins with it
#
mkdir -p ${VIM_SITE_DIR} && cp plug.vim ${VIM_SITE_DIR}
nvim +PlugInstall +qall

#
# create a new tabline formatter
#
mkdir -p ${TABLINE_FORMATTERS_DIR} && cp foo.vim ${TABLINE_FORMATTERS_DIR}
