-- 4. Find the number of elements of a list. (easy)
--
-- Example (ocaml)
-- # length ["a"; "b"; "c"];;
-- - : int = 3
-- # length [];;
-- - : int = 0
import           Prelude hiding (length)

length :: [a] -> Int
length []     = 0
length (_:xs) = 1 + length xs
