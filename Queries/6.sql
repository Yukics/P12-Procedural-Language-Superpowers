/* CHECK DATA TYPE
SELECT DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE
     TABLE_NAME = 'products' AND
     COLUMN_NAME = 'common_prod_id'
*/

---SQL---
CREATE FUNCTION show_cust_sql(int) RETURNS customers AS $$
    SELECT * FROM customers WHERE customerid = $1;
$$ LANGUAGE SQL;

select * from show_cust_sql(2);
select (show_cust_sql(2)).firstname;


---PLSQL---
create or replace function show_cust_plpgsql(id INTEGER) returns customers as $$
declare customer record;
begin
    SELECT  * into customer FROM customers WHERE customerid = $1;
    return customer;
end; $$ language 'plpgsql';


select * from show_cust_plpgsql(2);
select (show_cust_plpgsql(2)).firstname;