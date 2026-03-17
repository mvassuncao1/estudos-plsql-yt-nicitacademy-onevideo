DECLARE
v_last_customer number;
BEGIN
SELECT MAX(cust_id) INTO v_last_customer FROM CUSTOMER;
DBMS_OUTPUT.PUT_LINE(v_last_customer);
IF v_last_customer > 1000 THEN
    DELETE FROM CUSTOMER WHERE cust_id = 1001;
    DBMS_OUTPUT.PUT_LINE('cust_id é maior que 1001');
    COMMIT;
END IF;

END;
/