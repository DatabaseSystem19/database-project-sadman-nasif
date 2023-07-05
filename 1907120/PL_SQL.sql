-- Create a PL/SQL block
set serveroutput on
DECLARE
  -- Declare a cursor
  CURSOR product_cursor IS
    SELECT ProductID, ProductName, ProductPrice
    FROM Products;

  -- Declare variables to store cursor data
  product_id Products.ProductID%TYPE;
  product_name Products.ProductName%TYPE;
  product_price Products.ProductPrice%TYPE;
BEGIN
  -- Open the cursor
  OPEN product_cursor;

  -- Fetch data from the cursor
  LOOP
    FETCH product_cursor INTO product_id, product_name, product_price;
    EXIT WHEN product_cursor%NOTFOUND;

    -- Perform some operations with the fetched data
    -- For example, print the product details
    DBMS_OUTPUT.PUT_LINE('Product ID: ' || product_id);
    DBMS_OUTPUT.PUT_LINE('Product Name: ' || product_name);
    DBMS_OUTPUT.PUT_LINE('Product Price: ' || product_price);
    DBMS_OUTPUT.PUT_LINE('-------------------');
  END LOOP;

  -- Close the cursor
  CLOSE product_cursor;
END;
/
