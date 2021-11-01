-- 5. Reverse a list. (easy)
--
-- Example (ocaml)
-- # rev ["a"; "b"; "c"];;
-- - : string list = ["c"; "b"; "a"]

rev :: [a] -> [a]
rev []     = []
rev (x:xs) = rev xs ++ [x]
