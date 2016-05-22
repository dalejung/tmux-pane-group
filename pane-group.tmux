#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$CURRENT_DIR/scripts/pane-modal.sh "$CURRENT_DIR/blah.sh" "dale"

tmux bind-key "'" run-shell "\"$CURRENT_DIR/pane-group.tmux\""

#cmd="$CURRENT_DIR/pane-modal.sh \"$current_pane_id\" \"$new_pane_id\""
#pane_exec "$new_pane_id" "$cmd"
