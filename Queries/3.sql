set search_path = "data";

---1---
CREATE function insert_category1_sql (pcategory integer, pname varchar)
returns void as $$
begin
    insert into categories (category, categoryname) values (pcategory, pname);
end; $$ language plpgsql;
select insert_category1_sql(21, 'category21');

---2---
CREATE function insert_category2_sql (integer, varchar)
returns void as $$
begin
    insert into categories (category, categoryname) values ($1, $2);
end; $$ language plpgsql;
select insert_category2_sql(22, 'category22');

---3---
CREATE function insert_category3_sql (category integer, categoryname varchar)
returns void as $$
begin
    insert into categories (category, categoryname) values (category, categoryname);
end; $$ language plpgsql;
select insert_category3_sql(23, 'category23');

---4---
CREATE function insert_category4_sql (pcategory categories)
returns void as $$
begin
    insert into categories values (pcategory);
end; $$ language plpgsql;
select insert_category4_sql((24, 'category24'));
