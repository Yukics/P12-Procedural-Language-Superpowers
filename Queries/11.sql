---PLPGSQL---
CREATE or replace FUNCTION show_prod_cat2_plpgsql(x int)
RETURNS table(prod_id int, category int, title varchar(50), actor varchar(50), price numeric, special smallint, common_prod_id int) AS $$
begin

    return query (select * from products where products.category=$1);
end;
$$ language 'plpgsql';

select * from show_prod_cat2_plpgsql(1);