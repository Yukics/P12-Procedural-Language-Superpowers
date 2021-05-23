set search_path = "data";

INSERT INTO data.customers VALUES (20002, 'Pep', 'López', '6224597470 Dell Way', NULL, 'DVCINXG', NULL, 0, 'Australia', 2, 'sg@dell.com', '6224597470', 3, '1869697669055999', '2010/07', 'user20002', 'password', 17, 40000, 'F');
INSERT INTO data.customers VALUES (20001, 'Sergi', 'González', '6224597470 Dell Way', NULL, 'DVCINXG', NULL, 0, 'Australia', 2, 'sg@dell.com', '6224597470', 3, '1869697669055999', '2010/07', 'user20001', 'password', 17, 40000, 'F');

create type after_before as (before int, after int);
create or replace function del_under18_2()
returns after_before as $$
declare
   before integer;
   after integer;
begin
   select count(*) into before from customers;
   delete from customers where age < 18;
   select count(*) into after from customers;
   return(before, after);
end; $$ language plpgsql

select del_under18_2();
select * from del_under18_2();
