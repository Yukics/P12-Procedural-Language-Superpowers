set search_path = "data";

---1---
---SQL---
CREATE FUNCTION insert_category1_sql(pcategory integer, pname varchar) RETURNS void AS
$$
    insert into categories (category, categoryname) values (pcategory, pname)
$$ language sql;

---PLPGSQL---
CREATE function insert_category1_plpgsql (pcategory integer, pname varchar)
returns void as $$
begin
    insert into categories (category, categoryname) values (pcategory, pname);
end; $$ language plpgsql;
select insert_category1_plpgsql(21, 'category21');

---2---
---SQL---
CREATE FUNCTION insert_category2_sql(integer, varchar) RETURNS void AS
$$
    insert into categories (category, categoryname) values ($1, $2)
$$ language sql;

---PLPGSQL---
CREATE function insert_category2_plpgsql (integer, varchar)
returns void as $$
begin
    insert into categories (category, categoryname) values ($1, $2);
end; $$ language plpgsql;
select insert_category2_plpgsql(22, 'category22');

---3---
---SQL---
CREATE FUNCTION insert_category3_sql(category integer, categoryname varchar) RETURNS void AS
$$
    insert into categories (category, categoryname) values (category, categoryname)
$$ language sql;

---PLPGSQL---
CREATE function insert_category3_plpgsql (category integer, categoryname varchar)
returns void as $$
begin
    insert into categories (category, categoryname) values (category, categoryname);
end; $$ language plpgsql;
select insert_category3_plpgsql(23, 'category23');

---4---
---SQL---
CREATE FUNCTION insert_category4_sql(pcategory categories) RETURNS void AS
$$
    insert into categories values ($1.category, $1.categoryname)
$$ language sql;

---PLPGSQL---
CREATE function insert_category4_plpgsql (pcategory categories)
returns void as $$
begin
    insert into categories values ($1.category, $1.categoryname);
end; $$ language plpgsql;
select insert_category4_plpgsql((24, 'category24'));
