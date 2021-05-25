---SQL---
CREATE or replace FUNCTION show_prod_cat_sql (x int)
RETURNS table(prod_id int, category int, title varchar(50), actor varchar(50), price numeric, special smallint, common_prod_id int) AS $$
   select * from products where category=$1;
$$ LANGUAGE SQL;

select count(*) from show_prod_cat_sql(1);

---PLSQL---
CREATE or replace FUNCTION show_prod_cat_plpgsql(in x int)
RETURNS setof products AS $$
begin
    return query (select * from products where products.category=x);
end;
$$ language 'plpgsql';

select count(*) from show_prod_cat_plpgsql(1);