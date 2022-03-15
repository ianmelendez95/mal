IDRIS2_LIBDIR := $(shell idris2 --libdir)

STEP0_BIN := build/exec/step0_repl

READLINE_LN := build/exec/step0_repl_app/libidrisreadline.dylib
READLINE_DYLIB := $(IDRIS2_LIBDIR)/readline/lib/libidrisreadline.dylib

step0_repl: $(STEP0_BIN) $(READLINE_LN)
	@echo "#!/usr/bin/env bash"         >  step0_repl
	@echo ""                            >> step0_repl
	@echo "exec $(STEP0_BIN) \"$${@}\"" >> step0_repl
	chmod 700 step0_repl

$(STEP0_BIN): src/Step0Repl.idr
	idris2 -p readline --source-dir src -o step0_repl src/Step0Repl.idr 

$(READLINE_LN): $(READLINE_DYLIB)
	ln -s $(READLINE_DYLIB) $(READLINE_LN)
