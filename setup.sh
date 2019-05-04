#!/usr/bin/env zsh

mkdir -pv $HOME/.local
git submodule foreach --quiet "git pull && make install PREFIX=$HOME/.local && make clean"
