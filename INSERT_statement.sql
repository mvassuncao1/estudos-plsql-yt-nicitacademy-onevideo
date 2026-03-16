DECLARE
nome_func           varchar2(100);
salario_inicial     number(10, 2);
BEGIN
nome_func           := 'João Vitor 1598874';
salario_inicial     := 1791.05;
INSERT INTO FUNCIONARIO (NOME, SALARIO) VALUES (nome_func, salario_inicial);
END;
/