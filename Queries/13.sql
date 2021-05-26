create or replace function mySum_sql(uno text, dos text) returns text as $$
    select(uno::numeric+dos::numeric);
    select(concat(uno, dos))
 $$ LANGUAGE sql;

select mySum_sql(1,1), mySum_sql(1.1, 1), mySum_sql('1','1');