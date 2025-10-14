-- Display all product names and their categories -- 
SELECT 
name,
category
FROM zepto_v2; 

-- Show only the products that are out of stock.--
SELECT 
name,
outOfStock
from zepto_v2
WHERE outOfStock=TRUE;   


-- Find all products where the discount is greater than 10% -- 
SELECT 
name,
discountPercent 
FROM zepto_v2 
WHERE discountPercent >10; 


-- List all products sorted by MRP in descending order-- 
SELECT 
name,
mrp
from zepto_v2 
order by 
mrp desc;

-- Show the total number of products in the table -- 
SELECT 
count(*) AS NO_products 
FROM ZEPTO_V2; 



-- Calculate the average MRP of all products.-- 

SELECT 
name,
AVG(mrp) AS  average_MRP 
FROM zepto_v2 
GRoup by 
name;

-- Find the total available quantity of all products in stock. -- 
SELECT 
sum(availableQuantity) AS total_available_quantity
FROM zepto_v2  
WHERE outOfStock= FALSE ;

-- Get the price difference (MRP - Discounted Price) for each product.-- 
SELECT 
name,
mrp,
discountedSellingPrice,
(mrp-discountedSellingPrice) AS mrp_dis_price 
from zepto_v2 ; 

-- Display products where discounted selling price is less than 5000. -- 
SELECT name, discountedSellingPrice 
FROM zepto_v2 
WHERE discountedSellingPrice < 5000;



-- Show all unique categories available. -- 

SELECT 
 DISTINCT Category   AS unique_category 
from zepto_v2;

-- Find the product with the highest discount percentage -- 
SELECT 
name,
MAX(discountPercent) 
from zepto_v2 
group by 
name
limit 1; 


-- Group products by category and find the average discount for each. -- 
SELECT 
name,
Category,
avg(discountPercent)  AS  average_discount_product
from zepto_v2  
group by  
name,
Category; 

-- Find how many products are available in each category -- 
SELECT 
Category ,
count(name)  AS product_as_category
from zepto_v2
group by 
Category ; 

-- Show only products whose name starts with the letter ‘D’. -- 
SELECT 
name 
from zepto_v2 
WHERE name like 'd%'; 


-- Find all products where availableQuantity is less than quantity -- 

SELECT 
name,
availableQuantity,
quantity 
FROM zepto_v2 
where availableQuantity<quantity ; 

-- Display the top 3 highest-priced products based on MRP. -- 


SELECT 
name,
mrp
from zepto_v2 
group by 
name 
order by 
name,
mrp DESC 
limit 3; 


-- Count how many items are out of stock. --  

SELECT 
COUNT(outOfStock)  AS  out_of_stock
from zepto_v2  
where outOfStock='TRUE' ;  


-- Find products with discount price difference greater than 500. -- 
SELECT name, (mrp - discountedSellingPrice) AS discount_difference
FROM zepto_v2
WHERE (mrp - discountedSellingPrice) > 500;


-- Find the minimum, maximum, and average MRP for all products -- 
select
name,
min(mrp),
max(mrp), 
avg(mrp)  
from zepto_v2  
group by 
name;  

-- Show the total number of products for each outOfStock status (TRUE/FALSE).-- 
SELECT 
outOfStock,
COUNT(name) AS total_products
FROM 
zepto_v2
GROUP BY 
outOfStock;







