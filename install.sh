#!/usr/bin/env bash
#
# install.sh
#

PREFIX="${PREFIX:-$HOME/.local}"

install -d "$PREFIX/bin"
install -m 755 bin/* "$PREFIX/bin/"
