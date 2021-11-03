-- 19. Rotate a list N places to the left. (medium)
--
-- Example (ocaml)
-- # rotate ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] 3;;
-- - : string list = ["d"; "e"; "f"; "g"; "h"; "a"; "b"; "c"]
-- # rotate ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] (-2);;
-- - : string list = ["g"; "h"; "a"; "b"; "c"; "d"; "e"; "f"]

rotate :: [a] -> Int -> [a]
rotate xs 0 = xs
rotate list@(x:xs) n
  | n < 0     = rotate list (l-n')
  | otherwise = rotate (xs ++ [x]) (n'-1)
  where
    l     = length list
    n'    = (abs n) `mod` l
    abs a = if a < 0
      then a * (-1)
      else a
