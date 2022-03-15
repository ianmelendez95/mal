module Step0Repl

import System.REPL
import Text.Readline

echoLoop : IO ()
echoLoop
    = do Just input <- readline "user> "
              | Nothing => putStrLn "EOF"
         putStrLn input
         when (input /= "") $ addHistory input
         if input /= "quit"
            then echoLoop
            else putStrLn "Goodbye!"

main : IO ()
main = echoLoop

