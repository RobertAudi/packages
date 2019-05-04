#!/usr/bin/env zsh

mkdir -pv $HOME/.local
git submodule foreach --quiet "echo \"==> \$name\"; git pull && (make && make install PREFIX=$HOME/.local && make clean || true); echo \"---\\n\""
