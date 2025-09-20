select * from books;
select * from customers;
select * from orders;
#1. Retrieve all books in the “Fiction” genre.
select * from books 
where genre = 'Fiction';

#2. Find books published after the year 1950.
select * from books 
where Published_Year > 1950;

#3. List all customers from Canada.
select * from customers 
where country = 'Canada';

#4. Show orders placed in November 2023.
#approach 1
SELECT *
FROM orders
WHERE YEAR(Order_Date) = 2023
  AND MONTH(Order_Date) = 11;

#approach 2
select * from orders
where Order_Date like '2023-11%';

#approach 3
select * from orders
WHERE Order_Date BETWEEN '2023-11-01' AND '2023-12-01';

#5. Retrieve the total stock of books available.
select title,stock
from books;

#6. Find the details of the most expensive book.
select * 
from books
order by price desc
limit 1;

#7. Show all customers who ordered more than 1 quantity of a book. 
select c.name , o.Quantity
from customers c 
join orders o
on c.Customer_ID = o.Customer_ID
where o.Quantity>1 ;

#8. Retrieve all orders where the total amount exceeds $20.
select *
from orders
where Total_Amount>20 ;

#9. List all distinct genres in the bookstore.
select distinct genre
from books;

#10. Find the book with the lowest stock available.
SELECT title, stock
FROM books
ORDER BY stock ASC
LIMIT 1;

#11. Calculate the total revenue from all orders.
select sum(Total_Amount) as Revenue
from orders;

#12. Retrieve the total number of books sold for each genre. 
select b.genre as genre , sum(Quantity) as Quantity
from orders o
join books b
on  o.Book_ID = b.Book_ID
group by b.genre;

#13. Find the average price of books in the “Fantasy” genre.
select genre,avg(price) as average_price
from books 
where genre = 'Fantasy';

#14. List customers who have placed at least 2 orders. 
SELECT
  c.name,
  COUNT(o.Order_ID)
FROM customers c
JOIN orders o
  ON c.Customer_ID = o.Customer_ID
GROUP BY
  c.name
HAVING
  COUNT(o.Order_ID) >= 2;

#15. Find the most frequently ordered book.
SELECT b.Book_ID, b.title AS Title, SUM(o.Quantity) AS quantity
FROM books b
JOIN orders o
ON b.Book_ID = o.Book_ID 
GROUP BY b.Book_ID, b.title
ORDER BY quantity DESC
LIMIT 1;

#16. Show the top 3 most expensive books of the “Fantasy” genre.
select title, price as most_expensive
from books 
where genre = 'Fantasy'
order by price desc
limit 3;

#17. Retrieve the total quantity of books sold by each author.
select b.author,sum(o.quantity) as total_quatity
from books b 
left join orders o
on b.Book_ID = o.Book_ID
group by b.author;

#18. List the cities of customers who spent over $30.
select c.city,sum(o.Total_Amount)
from customers c
join orders o 
on c.Customer_ID = o.Customer_ID
group by c.city
order by o.Total_Amount >= 30;

# 19. Find the customer who spent the most on orders. 
SELECT
  c.Customer_ID,
  c.name,
  SUM(o.Total_Amount) AS Total_Spent
FROM customers AS c
JOIN orders AS o
  ON c.Customer_ID = o.Customer_ID
GROUP BY
  c.Customer_ID,
  c.name
ORDER BY
  Total_Spent DESC
LIMIT 1;

#20. Calculate the stock remaining after fulfilling all orders.
SELECT b.Book_ID, b.title, (b.Stock - COALESCE(SUM(o.Quantity), 0)) AS Remaining_stock
FROM books b
LEFT JOIN orders o
  ON b.Book_ID = o.Book_ID
GROUP BY
  b.Book_ID, b.title, b.Stock;

  
