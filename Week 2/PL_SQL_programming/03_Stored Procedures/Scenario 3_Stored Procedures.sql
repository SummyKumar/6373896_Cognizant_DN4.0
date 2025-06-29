BEGIN
  SELECT balance INTO from_balance
  FROM accounts
  WHERE account_id = from_account_id;
  IF from_balance < amount THEN
    DBMS_OUTPUT.PUT_LINE('Transfer failed: Insufficient balance.');
    RETURN;
  END IF;
  UPDATE accounts
  SET balance = balance - amount
  WHERE account_id = from_account_id;
  UPDATE accounts
  SET balance = balance + amount
  WHERE account_id = to_account_id;
  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Transfer of ' || amount || 
                       ' from account ' || from_account_id || 
                       ' to account ' || to_account_id || ' successful.');
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Error: One of the accounts does not exist.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
END;
/
