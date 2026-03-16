DECLARE
n1     NUMBER(10, 2) := &n1PodeMudarNomeAqui;
n2     NUMBER(10, 2) := &n2PodeMudarNomeAqui;
result NUMBER(10, 2);
BEGIN
result := n1 + n2;
dbms_output.put_line('A soma de ' || n1 || ' + ' || n2 || ' = ' || result);
END;
/