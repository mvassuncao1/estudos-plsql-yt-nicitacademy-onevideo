-- Sempre finalizar com / após END
BEGIN
DBMS_OUTPUT.PUT_LINE('TEasdasdsaSTE');
END;
/

DECLARE
-- Declaração de variáveis
-- Podemos atribuir valores na declaração
n1 NUMBER(10) := 10;
n2 NUMBER(10) := 20;

BEGIN
-- Podemos alterar valores das variáveis no BEGIN
n1 := 10;
n2 := 6;
dbms_output.put_line('A soma de ' || n1 || ' + ' || n2 || ' = ' || (n1 + n2));
END;
/

-- Valores decimais em variáveis inteiras:
DECLARE
-- Declaração de variáveis
-- Podemos atribuir valores na declaração
n1 NUMBER(10) := 10.5;
n2 NUMBER(10) := 20.5;

BEGIN
-- Podemos alterar valores das variáveis no bloco BEGIN
n1 := 10.49; -- arredonda para baixo = 10
n2 := 6.5;   -- arredonda para cima  = 7
dbms_output.put_line('A soma de ' || n1 || ' + ' || n2 || ' = ' || (n1 + n2));
END;
/

-- Para valores decimais serem exibidos corretamente mudamos a declaração
DECLARE
-- Declaração de variáveis
-- Podemos atribuir valores na declaração
n1     NUMBER(10, 2) := 10.5;
n2     NUMBER(10, 2) := 20.5;
result NUMBER(10, 2);
BEGIN
result := n1 + n2;
dbms_output.put_line('A soma de ' || n1 || ' + ' || n2 || ' = ' || result);
END;
/