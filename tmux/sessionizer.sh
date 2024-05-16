#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(find \
    ~/coding/c/ \
    ~/coding/cpp/ \
    ~/coding/python/ \
    ~/coding/java/ \
    ~/coding/rust/ \
    ~/coding/odin/ \
    ~/.config/nvim/lua/ \
    -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(tmux has-session 2> /dev/null)

if [[ -z "$tmux_running" ]] && tmux has-session -t $selected_name 2>/dev/null; then
    tmux attach -t $selected_name
    exit 0
else
    if [[ -z $TMUX ]] && [[ -z "$tmux_running" ]]; then
        tmux new-session -s $selected_name -c $selected
        exit 0
    fi

    if ! tmux has-session -t=$selected_name 2> /dev/null; then
        tmux new-session -ds $selected_name -c $selected
    fi
fi

tmux switch-client -t $selected_name
