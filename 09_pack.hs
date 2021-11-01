-- 9. Pack consecutive duplicates of list elements into sublists. (medium)
--
-- Example (ocaml)
-- # pack ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "d"; "e"; "e"; "e"; "e"];;
-- - : string list list =
-- [["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"]; ["d"; "d"];
--  ["e"; "e"; "e"; "e"]]
--
-- Using haskell's 'Data.List'.
-- pack = group
-- pack = groupBy (==)

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x:xs') : pack rest
  where
    (xs',rest) = span (==x) xs
