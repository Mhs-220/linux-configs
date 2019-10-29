run-shell "powerline-daemon -q"
source "/usr/lib/python3.7/site-packages/powerline/bindings/tmux/powerline.conf"
set-option -g default-terminal "screen-256color"
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
# for save tmux
set -g @plugin 'tmux-plugins/tmux-resurrect'
# for save vim
set -g @resurrect-strategy-vim 'session'
# for saving pane
set -g @resurrect-capture-pane-contents 'on'
set -g @resurrect-processes 'ssh'
# for continuesly save
set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @continuum-restore 'on'

# tmux yank and regex search
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-copycat'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'

# scrolling with mouse wheel
set -g mouse on
