{- Alumno: Becerra Tello Angel Emilio -}



{-
//********************************************************************************
Actividad 1: Crea una función que sume los tres primeros elementos de una lista de
enteros. Si tiene menos de tres, devuelve 0.
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-}
{-
sumaTres :: [Int] -> Int
sumaTres [] = 0
sumaTres [x] = 0
sumaTres [x, y] = 0
sumaTres (x:y:z:_) = x + y + z

main :: IO ()
main = do
    print $ sumaTres [1, 2, 3, 4, 5] 
    print $ sumaTres [10, 20]        
    print $ sumaTres []               
-}



{-
//**************************************************************************
Actividad 2: Dada una lista de edades, devuelve una lista que contenga solo
aquellas que son mayores o iguales a 18.
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-}
{-
numeros = [1, 2, 3, 4, 51,17,21,22,23,25,21]

validar :: [Int] -> [Int]{-}
validar [] = []
validar (x:xs)
    | x > 18    = x : validar xs
    | otherwise = validar xs-}

validar [] = []
validar x = filter (>18) x

main :: IO ()
main = do
    print $ validar numeros 
-}



{-
//**********************************************************************************
Actividad 3: Implementa tu propia función para calcular la longitud de una lista sin
usar la función nativa length
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-}
{-
longitud :: [a] -> Int
longitud [] = 0
longitud (_:xs) = 1 + longitud xs

main :: IO ()
main = do
    print $ longitud [1, 2, 3, 4, 5] 
    print $ longitud []
-}



{- 
//**************************************************************************
Actividad 4: Dada una cadena (lista de caracteres), conviértela totalmente a
mayúsculas utilizando map y toUpper
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-}
{-

import Data.Char (toUpper)

main :: IO ()
main = do

    let lista_char = ['h', 'o', 'l', 'a', ' ', 'm', 'u', 'n', 'd', 'o']

    print $ map toUpper lista_char
-}



{- 
//****************************************************************************
Actividad 5: Crea una función que multiplique todos los elementos de una lista
utilizando foldl
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-}
{-
main :: IO ()
main = do
    let numeros = [1, 2, 3, 4, 5]
    print $ foldl (*) 1 numeros
-}



{- 
//*******************************************************************************
Actividad 6: Dada una lista de nombres, devuelve una lista de tuplas que contenga
el nombre y su longitud, pero solo para nombres con menos de 5
caracteres.
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-}
{-
main :: IO ()
main = do
    let nombres = ["Ana", "Luis", "Pedro", "Eva", "Sofia"]
    let resultado = [(nombre, length nombre) | nombre <- nombres, length nombre < 5]
    print resultado
-}



{- 
//***************************************************************************
Actividad 7: Crea una función que invierta el orden de una lista manualmente.
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-}
{-
invertir :: [a] -> [a]
invertir [] = []
invertir (x:xs) = invertir xs ++ [x]

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    print $ invertir lista
-}


{- 
//*************************************************************************
Actividad 8: Crea una función que verifique si una cadena de texto contiene
únicamente dígitos numéricos.
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-}
{-
import Data.Char (isDigit)

esNumerico :: String -> Bool
esNumerico [] = True
esNumerico (x:xs) = isDigit x && esNumerico xs

main :: IO ()
main = do
    print $ esNumerico "12345" 
    print $ esNumerico "abc123" 
    print $ esNumerico ""
-}



{- 
//*************************************************************************
Actividad 9: Utiliza list comprehensions para generar todas las coordenadas (x, y)
posibles en un plano de 5x5 donde x sea igual a y
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-}
{-
main :: IO ()
main = do
    let coordenadas = [(x, y) | x <- [0..4], y <- [0..4], x == y]
    print coordenadas
-}



{- 
//*******************************************************************************
Actividad 10: Dada una lista de palabras, filtra las que tienen una longitud par,
conviértelas a mayúsculas y devuélvelas en una lista nueva.
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-}

import Data.Char (toUpper)
main :: IO ()
main = do
    let palabras = ["hola", "mundo", "haskell", "programacion", "examen"]
    let resultado = [map toUpper palabra | palabra <- palabras, even (length palabra)]
    print resultado
