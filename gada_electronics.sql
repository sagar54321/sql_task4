select * from gada_electronics_items

-- 1. write a qurey on gada_electronics_items calculate sum,minimum,maximum,average and count of stockquantity column.

select min(stockquantity) as min_stockquantity ,
	max(stockquantity) as max_stockquantity,
	avg(stockquantity) as average_stockquantity,
	sum(stockquantity) as sum_stockquantity,
	count(stockquantity) as count_stockquantity from gada_electronics_items

-- 2. write a qurey on gada_electronics_items calculate sum,minimum,maximum,average and count of stockquantity column the condition is the stockquantity is 10 to 50.

		select 
	sum(stockquantity) as sum_stockquantity,
	min(stockquantity) as min_stockquantity ,
	max(stockquantity) as max_stockquantity,
	avg(stockquantity) as average_stockquantity,
	count(stockquantity) as count_stockquantity from gada_electronics_items where stockquantity between 10 and 50

-- 3.What is the average price of products in each category, ordered by average price in descending order of top 10?
	
SELECT category, AVG(price) AS AveragePrice
FROM gada_electronics_items
GROUP BY category
ORDER BY AveragePrice DESC LIMIT 10

-- 4.What is the total number of products where the price is between 200 and 800 and the stock quantity is greater than 10?

SELECT COUNT(*) AS TotalProducts
FROM gada_electronics_items
WHERE price BETWEEN 200 AND 800
AND stockquantity > 10;

-- 5.What is the maximum price of products where the stock quantity is between 5 and 50 and the category is 'Smartphones'?

SELECT MAX(price) AS MaximumPrice
FROM gada_electronics_items
WHERE stockquantity BETWEEN 5 AND 50
AND category = 'Smartphones';

-- 6.What is the maximum price of products where the category is 'Audio' and the price is greater than 200 and less than 600?

SELECT MAX(price) AS MaximumPrice
FROM gada_electronics_items
WHERE category = 'Audio'
AND price > 200 and price < 600;

-- 7.What is the total price of products where the stock quantity is greater than 30 and the category is in ('Monitors', 'Cameras')?

SELECT SUM(price) AS TotalPrice
FROM gada_electronics_items
WHERE stockquantity > 30
AND category IN ('Monitors', 'Cameras');

-- 8.What is the price of products where the category is 'Smartphones' or 'Laptops', ordered by price in descending order, limited to the top 5 results?

SELECT price
FROM gada_electronics_items
WHERE category IN ('Smartphones', 'Laptops')
ORDER BY price DESC
LIMIT 5;

-- 9.What are the top 5 brands with the highest average price of products, excluding brands where the average price is less than 500? Display the brand name and the average price, ordered by average price in descending order.

SELECT brand, AVG(price) AS AveragePrice
FROM gada_electronics_items
GROUP BY brand
HAVING AVG(price) >= 500
ORDER BY AveragePrice DESC
LIMIT 5;


-- 10.What is the total price of products where the category is 'Smartphones' or 'Laptops' and price should be greater than 800?

SELECT SUM(price) AS TotalPrice
FROM gada_electronics_items
WHERE category IN ('Smartphones', 'Laptops') and price>800











