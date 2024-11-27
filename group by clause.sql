create database product;
use product;
create table sale(sale_id int,
			      product_id int,
                  customer_id int,
                  sale_date date,
                  quantity int,
                  unit_price int,
                  region varchar(25));
insert into sale(sale_id,product_id,customer_id,sale_date,quantity,unit_price,region)
values(1,101,1001,"2024-05-01",5,200,"North");
insert into sale(sale_id,product_id,customer_id,sale_date,quantity,unit_price,region)
values(2,102,1002,"2024-01-10",10,150,"east");
insert into sale(sale_id,product_id,customer_id,sale_date,quantity,unit_price,region)
values(3,103,1003,"2024-02-15",2,300,"north");
insert into sale(sale_id,product_id,customer_id,sale_date,quantity,unit_price,region)
values(4,104,1001,"2024-02-20",7,250,"west");
insert into sale(sale_id,product_id,customer_id,sale_date,quantity,unit_price,region)
values(5,101,1004,"2024-03-05",1,200,"east");
select * from sale;

#Write a query to calculate the total sales (Quantity * UnitPrice) for each product
select product_id, sum(quantity*unit_price) as Total_Sales from sale group by product_id;
#Write a query to find the total number of products sold in each region.
select region, sum(quantity) from sale group by region;


#Write a query to get the average sales amount per product.
select product_id, avg(quantity*unit_price) from sale group by product_id;

#Find the regions where total sales are more than 3000. 
select region,sum(quantity*unit_price) as Total_sale from sale
group by region
having Total_sale>3000;

#Write a query to get the maximum quantity sold for each product
select product_id,max(quantity) from sale group by product_id;

#Write a query to calculate the average quantity of products sold per region.
select region, avg(quantity) from sale group by region;

#Find the product IDs that have generated a total sales amount of more than 1000.
select product_id,sum(quantity*unit_price) as total_sale from sale
group by product_id
having total_sale>1000;

#Write a query to get the total number of sales (rows) made for each customer. 
select customer_id, sum(quantity*unit_price) from sale group by customer_id;

#Find the products for which the average quantity sold is less than 5. 
select product_id,avg(quantity) as avg_quantity from sale
group by product_id
having avg_quantity<5;

#Write a query to find the sum of total sales for each customer in each region.
select customer_id,region, sum(quantity*unit_price) as total_sale from sale group by customer_id,region;

#Write a query to calculate the total sales for each month. 
select extract(month from sale_date) as month,sum(quantity*unit_price) as total_sales from sale group by extract(year from sale_date),
extract(month from sale_date);

#Find the regions where the average unit price is more than 200.
select region,avg(unit_price) as avg_unit_price from sale group by region
having avg_unit_price>200;

#Write a query to get the minimum and maximum quantity sold per region. 
select region,min(quantity) as min_quantity,max(quantity) as max_quantity from sale group by region;

#Find the customers who have made more than 2 purchases.  
select customer_id,quantity from sale where quantity>2;

#Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.  
select product_id, sum(quantity*unit_price) as total_sales from sale 
group by product_id
having total_sales>1500;


	