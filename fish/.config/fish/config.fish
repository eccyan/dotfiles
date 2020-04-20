. ~/.config/fish/aliases.fish

set PATH $HOME/.jenv/bin $PATH
set PATH $HOME/.nodenv/bin $PATH
set GOENV_ROOT $HOME/.goenv
set PATH $GOENV_ROOT/bin $PATH

. ~/.config/fish/jenv.fish
. ~/.config/fish/rbenv.fish

# hub setup
eval (hub alias -s)

# pyenv
status --is-interactive; and pyenv init - | source
# status --is-interactive; and pyenv virtualenv-init - | source
set -x NVIM_PYTHON_LOG_FILE ~/log/nvim
set -x NVIM_PYTHON_LOG_LEVEL DEBUG

# nodenv
status --is-interactive; and source (nodenv init -|psub)
