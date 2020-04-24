.PHONY: init

install-envbuild: set-env
	git clone https://github.com/rbenv/ruby-build.git (rbenv root)/plugins/ruby-build
	git clone https://github.com/nodenv/node-build.git (nodenv root)/plugins/node-build


set-env: stow-all
	fish -c "set -Ux PYENV_ROOT $$HOME/.pyenv"
	fish -c "set -Ux fish_user_paths $$PYENV_ROOT/bin $$fish_user_paths"
	fish -c "set -Ux GOENV_ROOT $$HOME/.goenv"
	fish -c "set -Ux fish_user_paths $$GOENV_ROOT/bin $$fish_user_paths"
	fish -c "set -Ux RBENV_ROOT $$HOME/.rbenv"
	fish -c "set -Ux fish_user_paths $$RBENV_ROOT/bin $$fish_user_paths"
	fish -c "set -Ux NODENV_ROOT $$HOME/.nodenv"
	fish -c "set -Ux fish_user_paths $$NODENV_ROOT/bin $$fish_user_paths"
	fish -c "set -Ux JENV_ROOT $$HOME/.jenv"
	fish -c "set -Ux fish_user_paths $$JENV_ROOT/bin $$fish_user_paths"

stow-all: init
	ls -la | grep ^d | awk '{ print $$9 }' | grep -v '\.\+' | \
	xargs stow -vv --target ${HOME}

init:
	git submodule init
	git submodule update

clean:
	ls -la | grep ^d | awk '{ print $$9 }' | grep -v '\.\+' | \
	xargs stow -D -vv --target ${HOME}
