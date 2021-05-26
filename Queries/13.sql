create or replace function mySum(uno type, dos type) returns numeric as $$
begin

end; $$ language plpgsql;


CREATE OR REPLACE FUNCTION foo (VARIADIC arr int[]) RETURNS int AS $$
 DECLARE
     mySum integer := 0;
     currVal integer := 0;
 BEGIN
     FOREACH currVal IN ARRAY arr LOOP
         mySum := mySum + currVal;
     END LOOP;
     RETURN mySum;
 END;
 $$ LANGUAGE plpgsql;