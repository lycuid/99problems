-- 8. Eliminate consecutive duplicates of list elements. (medium)
--
-- Example (ocaml)
-- # compress ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
-- - : string list = ["a"; "b"; "c"; "a"; "d"; "e"]

compress :: Eq a => [a] -> [a]
compress = foldr f []
  where
    f a [] = [a]
    f a xs@(x:_)
      | a == x = xs
      | otherwise = a : xs
