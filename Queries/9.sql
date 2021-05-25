---General Queries using functions---

--a
select avg_price_sql() as average_of_all_products;

--b
select title, price from products where price > avg_price_sql();

--c
select title, price from products where price > avg_price_sql()*0.2;

--d
select title, price from products where price between avg_price_sql()*0.8 and avg_price_sql()*1.2; --price = avg_price_sql()*0.2 or