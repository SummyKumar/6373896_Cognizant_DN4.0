BEGIN
  FOR acc IN (
    SELECT account_id, balance
    FROM accounts
    WHERE account_type = 'savings'
  ) LOOP
    UPDATE accounts
    SET balance = acc.balance * 1.01
    WHERE account_id = acc.account_id;
  END LOOP;

  COMMIT;
END;
/

