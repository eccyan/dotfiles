.PHONY: install


install: download
	ls -la | grep ^d | awk '{ print $$9 }' | grep -v '\.\+' | \
	xargs stow -vv --target ${HOME}

download:
	git submodule init
	git submodule update

clean:
	ls -la | grep ^d | awk '{ print $$9 }' | grep -v '\.\+' | \
	xargs stow -D -vv --target ${HOME}
