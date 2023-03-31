linux: 
	chmod 700 ~/.dotfiles/bin/linux.sh
	~/.dotfiles/bin/linux.sh

clean: linux
	chmod 700 ~/.dotfiles/bin/cleanup.sh
	~/.dotfiles/bin/cleanup.sh
