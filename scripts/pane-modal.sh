#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"

script=$1
modal_name=$2

current_pane_id=`get_current_pane`
new_pane_id=$(init_named_panel $modal_name)

cmd="$CURRENT_DIR/run_in_modal.sh \"$current_pane_id\" \"$new_pane_id\" \"$script\""

pane_exec "$new_pane_id" "$cmd"
