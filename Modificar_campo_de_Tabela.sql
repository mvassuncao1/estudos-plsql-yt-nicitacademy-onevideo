alter table customer modify mobile_no varchar(14); -- ERRO ORA-01439: a coluna a ser modificada deve estar vazia para que o tipo de dados seja alterado
 -- Fazer com tabela backup
 
 RENAME CUSTOMER TO CUSTOMER_BKP;
 
 CREATE TABLE CUSTOMER (
    CUST_ID     NUMBER(8),
    CUST_NAME   VARCHAR(40),
    BOD         DATE,
    MOBILE_NO   VARCHAR2(20),
    CITY    VARCHAR2(40)
);

SELECT * FROM CUSTOMER_BKP;

INSERT INTO CUSTOMER SELECT * FROM CUSTOMER_BKP;

COMMIT;

TRUNCATE TABLE CUSTOMER;

COMMIT;

SELECT CUST_ID, CUST_NAME, DOB, '+55'||MOBILE_NO, CITY FROM CUSTOMER_BKP;

INSERT INTO CUSTOMER (SELECT CUST_ID, CUST_NAME, DOB, '+55'||MOBILE_NO, CITY FROM CUSTOMER_BKP);
COMMIT;

DECLARE
v_mobile_no SYSTEM.CUSTOMER.MOBILE_NO%type;
BEGIN
SELECT MOBILE_NO INTO V_MOBILE_NO FROM CUSTOMER WHERE CUST_ID = 1002;
DBMS_OUTPUT.PUT_LINE('O número de telefone é ' || v_mobile_no);
end;
/

DECLARE
v_customer CUSTOMER%rowtype;
BEGIN
SELECT * INTO v_customer FROM CUSTOMER WHERE CUST_ID = 1002;
DBMS_OUTPUT.PUT_LINE('Para acessar uma variável dentro do retorno use ' || v_customer.city);
END;
/