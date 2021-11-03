-- 18. Extract a slice from a list. (medium)
--
-- Example (ocaml)
-- # slice ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 2 6;;
-- - : string list = ["c"; "d"; "e"; "f"; "g"]

slice :: [a] -> Int -> Int -> [a]
slice xs i k = take (k-i+1) . drop i $ xs
