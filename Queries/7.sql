---SQL---
CREATE or replace FUNCTION show_prod_sql(INOUT prod_id integer, OUT title varchar(50), OUT price numeric) AS $$
    SELECT products.prod_id, products.title, products.price FROM products WHERE products.prod_id = $1;
$$ LANGUAGE SQL;

select * from show_prod_sql(2);


---PLSQL---
CREATE or replace FUNCTION show_prod_plpgsql(INOUT prod_id integer, OUT title varchar(50), OUT price numeric) RETURNS RECORD AS
$$
begin
    SELECT products.title into title FROM products WHERE products.prod_id =  $1;
    SELECT products.price into price FROM products WHERE products.prod_id =  $1;
    return;
end;
$$ language 'plpgsql';

select * from show_prod_plpgsql(2);