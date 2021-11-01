-- 7. Flatten a nested list structure. (medium)
--
-- Example (ocaml)
-- # flatten [One "a"; Many [One "b"; Many [One "c" ;One "d"]; One "e"]];;
-- - : string list = ["a"; "b"; "c"; "d"; "e"]

data Node a = One a | Many [Node a] deriving Show

flatten :: [Node a] -> [a]
flatten []          = []
flatten (One x:xs)  = x : flatten xs
flatten (Many x:xs) = flatten x ++ flatten xs
