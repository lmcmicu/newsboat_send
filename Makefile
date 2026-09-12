MAKEFLAGS += --warn-undefined-variables
SHELL := bash
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := setup
.DELETE_ON_ERROR:
.SUFFIXES:

.PHONY: setup

setup: | $$HOME/.newsboat/logs

$$HOME/.newsboat/logs:
	mkdir -p $@
