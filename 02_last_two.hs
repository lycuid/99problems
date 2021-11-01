-- 2. Find the last but one (last and penultimate) elements of a list. (easy)
--
-- Example (ocaml)
-- # last_two ["a"; "b"; "c"; "d"];;
-- - : (string * string) option = Some ("c", "d")
-- # last_two ["a"];;
-- - : (string * string) option = None

last_two :: [a] -> Maybe (a, a)
last_two []     = Nothing
last_two [x, y] = Just (x, y)
last_two (_:xs) = last_two xs
