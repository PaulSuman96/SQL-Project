# SQL-Project
This is a database project for managing an online bookstore using SQL. The system allows you to store and manage book details, customer orders, and track the books sold.
# Online Bookstore Project

This is a database project for managing an online bookstore using SQL. The system allows you to store and manage book details, customer orders, and track the books sold.

## Tables
The project includes the following tables:

1. **Books**: Information about the books available in the store.
    - `Book_ID` (Primary Key)
    - `Title`
    - `Author`
    - `Genre`
    - `Published_Year`
    - `Price`
    - `Stock`

2. **Customers**: Information about the customers who make purchases.
    - `Customer_ID` (Primary Key)
    - `Name`
    - `Email`
    - `Phone`
    - `City`
    - `Country`

3. **Orders**: Information about customer orders, including the books they have purchased.
    - `Order_ID` (Primary Key)
    - `Customer_ID` (Foreign Key)
    - `Book_ID` (Foreign Key)
    - `Order_Date`
    - `Quantity`
    - `Total_Amount`

## Setup Instructions
1. **Create the Tables:**
   Run the following SQL commands to create the tables in your SQL database:

   ```sql
   CREATE TABLE Books (
       Book_ID SERIAL PRIMARY KEY,
       Title VARCHAR(100),
       Author VARCHAR(100),
       Genre VARCHAR(50),
       Published_Year INT,
       Price NUMERIC(10, 2),
       Stock INT
   );

   CREATE TABLE Customers (
       Customer_ID SERIAL PRIMARY KEY,
       Name VARCHAR(100),
       Email VARCHAR(100),
       Phone VARCHAR(15),
       City VARCHAR(50),
       Country VARCHAR(150)
   );

   CREATE TABLE Orders (
       Order_ID SERIAL PRIMARY KEY,
       Customer_ID INT REFERENCES Customers(Customer_ID),
       Book_ID INT REFERENCES Books(Book_ID),
       Order_Date DATE,
       Quantity INT,
       Total_Amount NUMERIC(10, 2)
   );
