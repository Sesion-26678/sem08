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

lista :: [Int] -> [Int]
lista e = filter (>=18) e
lista2 :: [Int] -> [Int]
lista2 em = filter (<18) em

main :: IO()
main = do
    putStrLn "Ingrese:"
    input <- getLine
    let n = read input :: [Int]
    let r = lista n
    let rm = lista2 n
    putStrLn $ "Lista de edades: " ++ show n
    putStrLn $ "Lista de menores: " ++ show rm
    putStrLn $ "Lista de mayores: " ++ show r