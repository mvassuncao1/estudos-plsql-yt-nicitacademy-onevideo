// Sempre finalizar com / após END
BEGIN
DBMS_OUTPUT.PUT_LINE('TEasdasdsaSTE');
END;
/

DECLARE
n1 NUMBER(10);
n2 NUMBER(10);

BEGIN
n1 := 10;
n2 := 6;
DBMS_OUTPUT.put_line('A soma é ' || (n1 + n2));

END;
/