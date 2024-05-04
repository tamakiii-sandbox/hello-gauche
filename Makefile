.PHONY: help setup teardown

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependency/niyarin/red-paren
teardown:
	rm -rf dependency

dependency/niyarin/red-paren: dependency/niyarin
	git clone git@github.com:niyarin/red-paren.git $@

dependency/niyarin: dependency
	mkdir -p $@

dependency:
	mkdir -p $@
