#!/bin/bash

export FZF_DEFAULT_OPTS='--bind=ctrl-alt-j:down,ctrl-alt-k:up,ctrl-d:page-down,ctrl-u:page-up'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules}" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_COMPLETION_TRIGGER='**'
# bindkey '^T' fzf-completion
# bindkey '^I' fzf-completion
# bind -x '"\C-i": "fzf-completion"'
# bind -x '"\C-i": "expand-or-complete"'

fzf_completion_path="/usr/local/opt/fzf/shell/completion.bash"
[ -f "$fzf_completion_path" ] && . "$fzf_completion_path"
