. ~/.config/fish/aliases.fish

. ~/.config/fish/jenv.fish
. ~/.config/fish/rbenv.fish

# pyenv
status --is-interactive; and pyenv init - | source
# status --is-interactive; and pyenv virtualenv-init - | source
set -x NVIM_PYTHON_LOG_FILE ~/log/nvim
set -x NVIM_PYTHON_LOG_LEVEL DEBUG

# nodenv
status --is-interactive; and source (nodenv init -|psub)

# goenv
status --is-interactive; and source (goenv init -|psub)

# replace malloc
# set -x LD_PRELOAD /usr/local/lib/mimalloc-1.6/libmimalloc.so

# Enable AWS CLI autocompletion: github.com/aws/aws-cli/issues/1079
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'
