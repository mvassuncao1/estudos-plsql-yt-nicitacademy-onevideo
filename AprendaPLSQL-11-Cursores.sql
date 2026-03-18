--CURSORES EXPLICITOS:
--SEM PARÂMETRO
DECLARE
CURSOR cur_funcionarios IS
    SELECT ID_FUNCIONARIO, NOME, SALARIO
    FROM FUNCIONARIO;
BEGIN
    FOR C_FUNCIONARIO IN cur_funcionarios LOOP
        DBMS_OUTPUT.PUT_LINE(C_FUNCIONARIO.NOME);
    END LOOP;
END;
/

--COM PARÂMETRO
DECLARE
CURSOR cur_funcionarios (c_id_funcionario funcionario.id_funcionario%Type) IS --Envio do parâmetro
    SELECT ID_FUNCIONARIO, NOME, SALARIO
    FROM FUNCIONARIO
    WHERE ID_FUNCIONARIO > c_id_funcionario;
v_id_funcionario    funcionario.id_funcionario%Type;
v_nome              funcionario.nome%Type;
v_salario           funcionario.salario%Type;
BEGIN
OPEN cur_funcionarios(10);
    FETCH cur_funcionarios INTO v_id_funcionario, v_nome, v_salario;
CLOSE cur_funcionarios;
DBMS_OUTPUT.PUT_LINE('ID: ' || v_id_funcionario || ', nome: ' || v_nome || ', salário: ' || v_salario);
END;
/

--COM PARÂMETRO COM FOR
DECLARE
CURSOR cur_funcionarios (c_id_funcionario funcionario.id_funcionario%Type) IS --Envio do parâmetro
    SELECT ID_FUNCIONARIO, NOME, SALARIO
    FROM FUNCIONARIO
    WHERE ID_FUNCIONARIO > c_id_funcionario;
BEGIN
    FOR funcionario IN cur_funcionarios(13) LOOP
        DBMS_OUTPUT.PUT_LINE('ID: ' || funcionario.id_funcionario || ', Nome: ' || funcionario.nome || ', Salário: ' || funcionario.salario);
    END LOOP;
END;
/

select * from V$PROCESS