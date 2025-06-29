
BEGIN
  UPDATE employees
  SET salary = salary + (salary * bonus_pct / 100)
  WHERE department = dept_name;

  DBMS_OUTPUT.PUT_LINE('Bonus applied to department: ' || dept_name);

  COMMIT;
END;
