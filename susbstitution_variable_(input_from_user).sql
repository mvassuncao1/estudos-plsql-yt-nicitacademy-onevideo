DECLARE
n1     NUMBER(10, 2) := &n1PodeMudarNomeAqui;
n2     NUMBER(10, 2) := &n2PodeMudarNomeAqui;
result NUMBER(10, 2);
BEGIN
result := n1 + n2;
dbms_output.put_line('A soma de ' || n1 || ' + ' || n2 || ' = ' || result);
END;
/

SET SERVEROUTPUT ON;
DECLARE
-- n3 number(10, 2) NOT NULL; -- dá erro pois n3 não pode receber valores nulos.
n3 number(10, 2);
n4 number(10, 2);
r1 number(10, 2);
BEGIN
n3 := null;
n4 := 10;
r1 := n3 + n4;
dbms_output.put_line('A soma de ' || n3 || ' + ' || n4 || ' = ' || r1); -- apresenta valores em branco de n3 e r1 pois n3 tem valor NULL
END;
/
