set search_path = "data";

---SQL---
create type fullname as (name varchar, lname varchar);
CREATE FUNCTION show_name_sql(int) RETURNS fullname AS $$
    select firstname, lastname from customers where customerid = $1;
$$ LANGUAGE SQL;

select show_name_sql(2);
select * from show_name_sql(2);

---PLSQL---
create type fullname as (name varchar, lname varchar);
create or replace function show_name_plsql(cid int)
returns fullname as $$
declare
   name varchar;
   lname varchar;
begin
   select firstname into name from customers where customerid = $1;
   select lastname into lname from customers where customerid = $1;
   return(name, lname);
end; $$ language plpgsql;

select show_name_plsql(2);
select * from show_name_plsql(2);
