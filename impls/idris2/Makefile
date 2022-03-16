BIN_DIR := build/exec
READLINE_DYLIB := $(shell idris2 --libdir)/readline/lib/libidrisreadline.dylib

# prevent deletion of implicit intermediates
.SECONDARY:

step%: $(BIN_DIR)/step% step%_readline
	ln -fs $(<) $(@)

$(BIN_DIR)/step% : src/Step%.idr
	idris2 -p readline --source-dir src -o step$(*) $(<)

step%_readline: $(READLINE_DYLIB)
	ln -fs $(READLINE_DYLIB) \
		build/exec/step$(*)_app/libidrisreadline.dylib
