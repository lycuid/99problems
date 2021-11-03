-- 20. Remove the K'th element from a list. (easy)
--
-- Example (ocaml)
-- # remove_at 1 ["a"; "b"; "c"; "d"];;
-- - : string list = ["a"; "c"; "d"]

remove_at :: Int -> [a] -> [a]
remove_at _ []     = []
remove_at 0 (_:xs) = xs
remove_at n (x:xs) = x : remove_at (n-1) xs
