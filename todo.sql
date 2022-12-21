--Книги, которые выпущены после 1900 года
select books.name from books
where (books.year>1900)

--Книги выпущенные до 1900 года, отсортированные по количеству
SELECT name, quantity
FROM books
WHERE year < 1900
ORDER BY quantity DESC


--Какие книги написали авторы
select books.name, authors.full_name
from books LEFT JOIN authors ON authors.id = books.id_author

--Кто из Московской области?
select full_name,address from readers
where address like '%Московская%'
