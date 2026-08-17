#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

### Install packages

dnf5 install -y \
    fish \
    tmux \
    distrobox \
    neovim


### Install brew

groupadd brew
/ctx/build/install_brew.sh
