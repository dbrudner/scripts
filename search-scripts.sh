#!/bin/bash

sh "$(find ~/.config/scripts -type f -name "*.sh" | awk -F/ '{print $NF "\t" $0}' | fzf --preview 'bat --color "always" {2}' --delimiter='\t' --with-nth=1 | awk -F'\t' '{print $2}')"
