. ~/.config/fish/aliases.fish
. ~/.config/fish/jenv.fish
. ~/.config/fish/ndenv.fish
. ~/.config/fish/rbenv.fish

# hub setup
eval (hub alias -s)

# pyenv
status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)
set -x NVIM_PYTHON_LOG_FILE ~/log/nvim
set -x NVIM_PYTHON_LOG_LEVEL DEBUG

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
