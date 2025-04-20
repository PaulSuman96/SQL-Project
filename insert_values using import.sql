create database online_bookstore;
use database online_bookstore;

-- Create Tables
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);
-- Import Data into Books Table
-- importing from "C:\Users\91809\Pictures\blog\Books.csv ", Export/Import ribbon.
select * from Books;