-- 17. Split a list into two parts; the length of the first part is given. (easy)
--
-- Example (ocaml)
-- # split ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 3;;
-- - : string list * string list =
-- (["a"; "b"; "c"], ["d"; "e"; "f"; "g"; "h"; "i"; "j"])
-- # split ["a"; "b"; "c"; "d"] 5;;
-- - : string list * string list = (["a"; "b"; "c"; "d"], [])
--
-- Using Haskell built-in:
-- split = flip splitAt

split :: [a] -> Int -> ([a], [a])
split xs n = (take n xs, drop n xs)
