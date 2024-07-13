#!/bin/bash

HISTFILE=~/.zsh_history
history=$(awk -F ';' '{print $2}' "$HISTFILE")
selected_command=$(echo "$history" | fzf --tac)
sh -c "$selected_command"
