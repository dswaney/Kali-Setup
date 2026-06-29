cat > ~/.tmux.conf <<'EOF'
##### Mouse #####
set -g mouse on

##### Pane Splits #####
unbind %
bind h split-window -h

unbind '"'
bind v split-window -v

##### Pane Activity #####
setw -g monitor-activity on
setw -g visual-activity on

##### Copy Mode #####
setw -g mode-keys vi

##### History #####
set -g history-limit 100000

##### Faster Escape #####
set -sg escape-time 0

##### Pane Borders #####
set -g pane-border-style fg=colour238
set -g pane-active-border-style fg=green

##### Status #####
set -g status-keys vi
EOF

# Reload the configuration if tmux is already running
tmux source-file ~/.tmux.conf 2>/dev/null

echo "========================================="
echo " tmux configuration installed successfully"
echo "========================================="
echo ""
echo "Useful shortcuts:"
echo "  Prefix + h   Split pane horizontally (left/right)"
echo "  Prefix + v   Split pane vertically (top/bottom)"
echo "  Mouse click  Select a pane"
echo "  Mouse drag   Resize panes"
echo "  Mouse wheel  Scroll in copy mode"
