-- 6. Find out whether a list is a palindrome. (easy)
--
-- Example (ocaml)
-- # is_palindrome ["x"; "a"; "m"; "a"; "x"];;
-- - : bool = true
-- # not (is_palindrome ["a"; "b"]);;
-- - : bool = true

is_palindrome :: Eq a => [a] -> Bool
is_palindrome = all (==True) . (zipWith (==) <*> reverse)
