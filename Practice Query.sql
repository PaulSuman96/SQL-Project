-- 1) Retrieve all books in the "Fiction" genre:
SELECT * 
FROM Books
WHERE genre = 'Fiction';




-- 2) Find books published after the year 1950:
SELECT *
FROM Books
WHERE published_year > 1950;

-- 3) List all customers from the Canada:
SELECT *
FROM Customers
WHERE country = 'Canada';

-- 4) Show orders placed in November 2023:
SELECT *
FROM Orders
WHERE MONTH(order_date) = 11 AND YEAR(order_date) = 2023;

-- 5) Retrieve the total stock of books available:
SELECT SUM(stock) AS total_stock
FROM Books;

-- 6) Find the details of the most expensive book:
SELECT *
FROM Books
ORDER BY price DESC
LIMIT 1;


-- 7) Show all customers who ordered more than 1 quantity of a book:(using joins)
SELECT DISTINCT c.*,quantity
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
JOIN Books b ON o.Book_ID = b.Book_ID
WHERE o.Quantity > 1;

-- 8) Retrieve all orders where the total amount exceeds $20:
SELECT *
FROM Orders
WHERE total_amount > 20;


-- 10) Find the book with the lowest stock:
SELECT *
FROM Books
ORDER BY stock ASC
LIMIT 1;


-- 11) Calculate the total revenue generated from all orders:
SELECT SUM(total_amount) AS total_revenue
FROM Orders;


-- 12) Retrieve the total number of books sold for each genre:
SELECT b.Genre, SUM(o.Quantity) AS Total_Books_Sold
FROM Orders o
JOIN Books b ON o.Book_ID = b.Book_ID
GROUP BY b.Genre;

-- 13) Find the average price of books in the "Fantasy" genre:
SELECT AVG(price) AS average_fantasy_price
FROM books
WHERE genre = 'Fantasy';

-- 14) List customers who have placed at least 2 orders:
SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) >= 2;

-- 15) Find the most frequently ordered book:
SELECT b.Title, COUNT(o.Order_ID) AS order_count
FROM Orders o
JOIN Books b ON o.Book_ID = b.Book_ID
GROUP BY b.Title
ORDER BY order_count DESC
LIMIT 1;

-- 16) Show the top 3 most expensive books of 'Fantasy' Genre :
SELECT *
FROM Books
WHERE Genre = 'Fantasy'
ORDER BY Price DESC
LIMIT 3;

-- 17) Retrieve the total quantity of books sold by each author:
SELECT b.Author, SUM(o.Quantity) AS total_quantity_sold
FROM Books b
JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Author
ORDER BY total_quantity_sold DESC;

-- 18) List the cities where customers who spent over $30 are located:
SELECT DISTINCT c.City
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
WHERE o.Total_Amount > 30;


-- 19) Calculate the stock remaining after fulfilling all orders:
SELECT b.Title, b.Stock - COALESCE(SUM(o.Quantity), 0) AS stock_remaining
FROM Books b
LEFT JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Book_ID, b.Title, b.Stock
ORDER BY stock_remaining DESC;





















	