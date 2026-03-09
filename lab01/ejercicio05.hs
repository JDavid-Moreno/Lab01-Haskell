--1)
--a)
incrementarLista xs = map suma xs

incrementarLista xs = map(\x -> x + 1) xs

--b)
filtrarPares xs = filter even xs

filtrarPares xs = filter(\x -> x mod 2) xs

--c)

sumarTuplas xs = fold suma(head xs + sumarTuplas(tail xs))

sumarTuplas xs = fold (\(x,y) (x1,y1) -> (x + x1, y + y1)) (0, 0) xs
