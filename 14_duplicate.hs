-- 14. Duplicate the elements of a list. (easy)
--
-- Example (ocaml)
-- # duplicate ["a"; "b"; "c"; "c"; "d"];;
-- - : string list = ["a"; "a"; "b"; "b"; "c"; "c"; "c"; "c"; "d"; "d"]

duplicate :: [a] -> [a]
duplicate []     = []
duplicate (x:xs) = x : x : duplicate xs
