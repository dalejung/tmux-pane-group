panes=$(tmux list-panes -F "#{pane_id}:#{pane_current_command}:#{pane_current_path}:#{?pane_active,active,nope}")
pane_id=$(echo "$panes" | fzf)
