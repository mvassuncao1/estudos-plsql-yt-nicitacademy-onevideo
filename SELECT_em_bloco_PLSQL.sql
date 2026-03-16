DECLARE
nome_funcionario    varchar2(100);
salario_atual       number(10, 2);
BEGIN
    SELECT  nome            , salario 
    INTO    nome_funcionario, salario_atual
    FROM    FUNCIONARIO 
    WHERE   ID_FUNCIONARIO = 4;
    
    dbms_output.put_line('O salário de ' || nome_funcionario || ' é R$' || salario_atual);
END;
/
