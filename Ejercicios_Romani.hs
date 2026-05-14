{-
lista :: [Int] -> Int
lista xs
    | length xs >= 3 = sum (take 3 xs)
    | otherwise = 0

main ::IO()
main = do
    putStrLn "Ingrese los numeros de la lista:"
    input <- getLine
    --let n = map read (words input) :: [Int]
    let n = read input :: [Int]
    let r = lista n
    putStrLn $ "La suma de la lista '" ++  show n ++ "' es: " ++ show r
-}

lista :: [Int]
lista ma = 