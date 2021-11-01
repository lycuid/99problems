-- 3. Find the K'th element of a list. (easy)
--
-- Example (ocaml)
-- # at 3 ["a"; "b"; "c"; "d"; "e"];;
-- - : string option = Some "c"
-- # at 3 ["a"];;
-- - : string option = None

at :: Int -> [a] -> Maybe a
at 1 (x:_)  = Just x
at _ []     = Nothing
at k (_:xs) = at (k - 1) xs
