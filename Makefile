all:
		google-chrome http://openmetric.org/til/programming/git-pull-with-submodule

submodule-init:
		git submodule update --init --recursive

submodule-update:
		git submodule update --recursive --remote


