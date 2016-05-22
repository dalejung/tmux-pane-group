#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"

current_pane_id=$1
new_pane_id=$2
script=$3

clear_screen

tmux swap-pane -s "$current_pane_id" -t "$new_pane_id"
#tmux join-pane -bv -s "$new_pane_id" -t "$current_pane_id"

source "$script"

revert_to_original_pane $current_pane_id $new_pane_id
