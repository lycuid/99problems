-- 11. Modified run-length encoding. (easy)
--
-- Example (ocaml)
-- # encode ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
-- - : string rle list =
-- [Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d";
--  Many (4, "e")]

data Rle a = One a | Many (Int, a) deriving Show

encode :: Eq a => [a] -> [Rle a]
encode [] = []
encode (x:xs) = f xs' : encode rest
  where
    (xs', rest) = span (==x) xs
    f ys = case length ys of
      0 -> One x
      l -> Many (l + 1, x)
