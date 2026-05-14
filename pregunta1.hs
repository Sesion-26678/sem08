
sumarTresPrimeros :: [Int] -> Int
sumarTresPrimeros lista
    | length lista < 3 = 0
    | otherwise = head lista + lista !! 1 + lista !! 2


main = do
    putStrLn "Ingrese una lista de números separados por espacios:"
    input <- getLine
    let numeros = map read (words input) :: [Int]
    let resultado = sumarTresPrimeros numeros
    putStrLn $ "La suma de los tres primeros números es: " ++ show resultado