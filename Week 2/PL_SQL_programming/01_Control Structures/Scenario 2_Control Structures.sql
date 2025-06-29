
BEGIN
  FOR customer IN (SELECT customer_id, balance FROM customers) LOOP
    IF customer.balance > 10000 THEN
      UPDATE customers
      SET IsVIP = 'TRUE'
      WHERE customer_id = customer.customer_id;
    END IF;
  END LOOP;
  COMMIT;
END;
