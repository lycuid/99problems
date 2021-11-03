-- 15. Replicate the elements of a list a given number of times. (medium)
--
-- Example (ocaml)
-- # replicate ["a"; "b"; "c"] 3;;
-- - : string list = ["a"; "a"; "a"; "b"; "b"; "b"; "c"; "c"; "c"]
import           Prelude hiding (replicate)

replicate :: [a] -> Int -> [a]
replicate [] _     = []
replicate (x:xs) n = (take n . repeat $ x) ++ replicate xs n
