CREATE OR REPLACE FUNCTION show_prod_cat_plpgsql_cursor(int) RETURNS refcursor AS $$
DECLARE
      ref refcursor;
BEGIN
      OPEN ref FOR select * from products where products.category=$1;
      RETURN ref;
END;
$$ LANGUAGE 'plpgsql';

-- Start a transaction
BEGIN;
SELECT show_prod_cat_plpgsql_cursor(1);
FETCH ALL IN "<unnamed portal 2>";
COMMIT;