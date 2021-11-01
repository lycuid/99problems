-- 10. Run-length encoding of a list. (easy)
--
-- Example (ocaml)
-- # encode ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
-- - : (int * string) list =
-- [(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")]

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode (x:xs) = (length xs' + 1, x) : encode rest
  where
    (xs', rest) = span (==x) xs
