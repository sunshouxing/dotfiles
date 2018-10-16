#!/usr/bin/env bash

set -xv

pushd $(dirname $(readlink "$BASH_SOURCE")) > /dev/null
ROOT_DIR=$(pwd)
popd > /dev/null

# ~/.local/share/nvim/site/autoload/plug.vim
