-- Late penalty calculator in Haskell
-- Jim Teresco, Fri Jun 28 17:27:26 EDT 2019

-- to run in GHCI, launch ghci, load this file with
-- :l "Late.hs"
-- then run with
-- main

module Late
where

-- the function late builds up a list of Strings, each of which
-- is the next hour's late penalty information, stopping when
-- the penalty first exceeds 100%
late :: Int -> [String]
late hours
    | penalty >= 100 = [line]
    | otherwise = [line] ++ late(hours+1)
    where penalty = 1.08 ** fromIntegral hours
          line = "Hour " ++ (show hours) ++ " late = " ++ (show penalty) ++ "% penalty"

main = putStrLn (unlines (late 1))

