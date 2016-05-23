#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Example:
# bind-key C-i if-shell "#{at_edge} L" "display at_edge" "display no"
tmux set-environment -g add_pane $CURRENT_DIR/scripts/pane_modal.sh
