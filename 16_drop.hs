-- 16. Drop every N'th element from a list. (medium)
--
-- Example (ocaml)
-- # drop ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 3;;
-- - : string list = ["a"; "b"; "d"; "e"; "g"; "h"; "j"]
import           Prelude hiding (drop)

drop :: [a] -> Int -> [a]
drop [] _     = []
drop (x:xs) 1 = xs
drop (x:xs) n = x : drop xs (n-1)
