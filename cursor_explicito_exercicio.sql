--Liste todos os funcionários com salário menor que R$3000 e dê um aumento de 15,89%. Retorne ID, nome, salário atual, salário novo

DECLARE
v_salario_abaixo_de funcionario.salario%TYPE := 3000; --&valor_minimo_do_salario;
CURSOR cur_funcionarios(v_salario_abaixo_de funcionario.salario%TYPE) IS
    SELECT ID_FUNCIONARIO, NOME, SALARIO FROM FUNCIONARIO WHERE SALARIO < v_salario_abaixo_de;
BEGIN
FOR funcionario IN cur_funcionarios(v_salario_abaixo_de) LOOP
    DBMS_OUTPUT.PUT_LINE('Funcionário ' || funcionario.id_funcionario || ' - ' || funcionario.nome || ' / Salário novo: R$ ' || funcionario.salario * 1.1589);
END LOOP;
END;
/



