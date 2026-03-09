
-- 1)

--a)
head [10,20,30,40]
-- 10

--b)
tail [10,20,30,40]
-- [20,30,40]

--c)
take 3 [1..10]
-- [1,2,3]

--d)
drop 4 [1..10]
-- [5,6,7,8,9,10]

--e)
length [1,2,3,4,5]
-- 5

-- Pregunta: ¿Qué hace la expresión [1..10] y cómo se relaciona con la evaluación perezosa?
-- lo que hace la expresion es una lista de los numeros del 1 al 10, pero para no escribirla
-- se pone los .. que significan que va de tal numero a tal numero, y se relaciona porque no
-- se escribe la lista completa, solo una funcion.

--2)
--a)
main = print(primerElemento [1,2,3,4,5,6] )

primerElemento  a = head a

--Output: 1

--b)


main = print(producto [1,2,3,4,5,6] )

producto [] = 1
producto a  = head a * producto(tail a)

-- Output: 720 

-- c)
main = print(eliminarNegativos [-1,2,3,-4,5,6] )

eliminarNegativos a = [abs i| i<- [0..length a]]

Output: [0,1,2,3,4,5,6]

-- d)
main = print(invertir [1,2,3,4,5,6] )

invertir [] = []
invertir (a:as) = invertir as ++ [a] 
