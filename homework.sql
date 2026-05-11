Q1 SELECT brand_name FROM [production].[brands];

Q2 SELECT product_name,
list_price 
FROM production.products ORDER BY list_price DESC;

Q3 USE Bikestores;
SELECT * FROM 
sales.customers 
WHERE state ='NY';

Q4 SELECT TOP 5 list_price FROM production.products ORDER BY list_price DESC;

Q5 SELECT product_name,
list_price 
FROM production.products WHERE list_price BETWEEN $200 AND $500
ORDER BY 
list_price ASC;

Q6
SELECT * FROM Sales.customers where last_name LIKE 'S%'

Q7 
SELECT product_name,category_id FROM production.products where category_id in (6,7);
Q8
SELECT order_id,order_status from sales.orders where shipped_date is null
Q9
SELECT product_name,brand_id,list_price * 0.85 as[sale price] FROM production.products;
Q10
SELECT
distinct city
from sales.customers order by city ASC;
Q11
SELECT first_name +''+ last_name as full_name,email FROM sales.staffs where active =1
Q12
SELECT city FROM sales.stores union SELECT city FROM sales.customers order by city;
Q13
select product_id from [sales].[order_items] except select product_id from [production].[products];
Q14
 select * from production.products where model_year >=2016 and list_price >1500 order by list_price desc;
 Q15
 SELECT
 *
 FROM production.products 
 
 where model_year >= 2016 and brand_id = 9 
 
 union all
 select 
 * 
 from production.products
 
 where model_year >= 2017 and brand_id = 8 
 
 order by model_year,list_price desc;
