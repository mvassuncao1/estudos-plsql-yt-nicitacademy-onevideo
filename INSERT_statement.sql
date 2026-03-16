
TRUNCATE TABLE FUNCIONARIO;

-- Pode executar instrução INSERT direta
INSERT INTO funcionario (nome, salario) VALUES ('Gustavo', 653.45);

DECLARE
nome_func           varchar2(100);
salario_inicial     number(10, 2);
BEGIN
nome_func           := 'João Vitor 1598874';
salario_inicial     := 1791.05;
INSERT INTO FUNCIONARIO (NOME, SALARIO) VALUES (nome_func, salario_inicial);
COMMIT;
END;
/

BEGIN
INSERT INTO FUNCIONARIO
            (NOME,          SALARIO) VALUES
            ('Marcos',        8971.62),
            ('Josias',        1791.62),
            ('José',          8971.62),
            ('Diego',         1791.62),
            ('Ivo',          10000.62),
            ('Josias',       1791.62);
COMMIT;
END;
/
