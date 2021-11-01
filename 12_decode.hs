-- 12. Decode a run-length encoded list. (medium)
--
-- Examples (ocaml)
-- # decode [Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d"; Many (4, "e")];;
-- - : string list =
-- ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"]

data Rle a = One a | Many (Int, a) deriving Show

decode :: [Rle a] -> [a]
decode []               = []
decode (One x:xs)       = x : decode xs
decode (Many (l, x):xs) = take l (repeat x) ++ decode xs
