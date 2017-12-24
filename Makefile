# Thanks to @jessfraz: https://github.com/jessfraz/dotfiles

.PHONY: all dotfiles

all: dotfiles

dotfiles:
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".git"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \
	git update-index --skip-worktree $(CURDIR)/.gitconfig;