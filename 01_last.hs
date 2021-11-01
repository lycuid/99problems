-- 1. Write a function last : 'a list -> 'a option that returns the last
-- element of a list. (easy)
--
-- Example (ocaml):
-- # last ["a" ; "b" ; "c" ; "d"];;
-- - : string option = Some "d"
-- # last [];;
-- - : 'a option = None
import           Prelude hiding (last)

last :: [a] -> Maybe a
last []     = Nothing
last [x]    = Just x
last (_:xs) = last xs
