# run server
.PHONY: serve
serve:
	mix phx.server

# serve with shell
.PHONY: serves
serves:
	iex -S phx.server

# shell without server
.PHONY: shell
shell:
	iex -S mix
