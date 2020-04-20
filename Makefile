.PHONY: install

install:
	ls -la | grep ^d | awk '{ print $$9 }' | grep -v '\.\+' | \
	xargs stow -vv --target ${HOME}

clean:
	ls -la | grep ^d | awk '{ print $$9 }' | grep -v '\.\+' | \
	xargs stow -D -vv --target ${HOME}
