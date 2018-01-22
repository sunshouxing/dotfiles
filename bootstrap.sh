#!/usr/bin/env bash

function doIt() {
    rsync --exclude ".git/" \
        --exclude "jupyter/" \
        --exclude "bootstrap.sh" \
        --exclude "README.md" \
        --exclude "LICENSE" \
        -avh --no-perms . ~;
    source ~/.zshrc;
}

doIt

# vim:set sw=4 ts=4 sts=4: #
