--Книги, которые выпущены после 1900 года
select books.name from books
where (books.year>1900);

--Книги выпущенные до 1900 года
SELECT name
FROM books
WHERE year < 1900;

--Какие книги написали авторы
select books.name, authors.full_name
from books LEFT JOIN authors ON authors.id = books.id_author;

--Кто из читателей из Московской области?
select full_name,address from readers
where address like '%Московская%';

--сколько книг нет в библиотеке
SELECT count(*)
FROM books_history
where books_history.status != 1;

--какие книги бесплатные, а какие платные
select distinct books.name, type.type from books_history
join books on books_history.book_id = books.id
join type on books_history.type = type.id
;

--количество платных и бесплатных книг
select t.type, count(book_id) from books_history b
left join type t on b.type = t.id
group by b.type, t.type;

--показать какие книги и сколько штук приехали в библиотеку 13 сентября
select distinct b.name, date_of_arrival, count(book_id) from books_history bh
left join books b on bh.book_id = b.id
where date_of_arrival = '2022-09-13'
group by b.name, date_of_arrival;
