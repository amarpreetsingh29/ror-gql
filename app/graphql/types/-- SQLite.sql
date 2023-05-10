-- SQLite
SELECT authors.id as author_id, authors.name,
books.id as books_id, books.name
FROM books
INNER JOIN
books_orders
ON books_orders.book_id = books.id
INNER JOIN
book_and_authors
ON book_and_authors.book_id = books.id
INNER JOIN
authors
ON authors.id = book_and_authors.author_id
WHERE books_orders.order_id=1




