
step0_repl: step0_repl_build step0_repl_script

step0_repl_script:
	@echo "#!/usr/bin/env bash"                  > step0_repl
	@echo ""                                     >> step0_repl
	@echo "exec build/exec/step0_repl \"$${@}\"" >> step0_repl
	chmod 700 step0_repl

step0_repl_build: Step0Repl.idr
	idris2 Step0Repl.idr -o step0_repl

