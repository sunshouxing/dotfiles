#!/usr/bin/env bash

function syncAll() {
    rsync --archive --verbose --human-readable \
        --exclude ".git/" \
        --exclude "jupyter/" \
        --exclude "bootstrap.sh" \
        --exclude "README.md" \
        --exclude "LICENSE" \
        --no-perms . ~

    source ~/.zshrc
}

function installVimPlugins() {
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
}

syncAll && installVimPlugins

mv ~/.vim/foo.vim ~/.vim/bundle/vim-airline/autoload/airline/extensions/tabline/formatters/

# vim:set sw=4 ts=4 sts=4: #
