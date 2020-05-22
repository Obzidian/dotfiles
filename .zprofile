#!/bin/zsh

export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox-esr"
export READER="zathura"

export XDG_DATA_HOME="$HOME/.local/share"
