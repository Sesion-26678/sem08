{-Crea una función que sume los tres primeros elementos de una lista de enteros. Si tiene menos de tres, devuelve 0.
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
{-Dada una lista de edades, devuelve una lista que contenga solo aquellas que son mayores o iguales a 18.
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
-}
{-Dada una cadena (lista de caracteres), conviértela totalmente a mayúsculas utilizando map y toUpper
import Data.Char (toUpper)
nm :: [String] -> [String]
nm = map (map toUpper)

main :: IO ()
main = do
  let n = ["Ana", "Luis", "Maria"]
  let nms = nm n
  putStrLn ("Nombres originales: " ++ show n)
  putStrLn ("Nombres en mayúsculas: " ++ show nms)

import Data.Char (toUpper)
lista :: [char] -> [char]
lista carac = map (toUpper)

main :: IO()
main = do
    putStrLn "Ingrese los caracteres: "
-}

lista :: [Int] -> Int
lista m = foldr(*) 1 m

main :: IO()
main = do
    putStrLn "Ingrese los numeros:"
    input <- getLine
    let n = read input :: [Int]
    let r = lista n
    putStrLn $ "La suma es: " ++ show r
