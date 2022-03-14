module Step0Repl

import System.REPL

main : IO ()
main = repl "user> " onInput where
  onInput : String -> String
  onInput input = input ++ "\n"
