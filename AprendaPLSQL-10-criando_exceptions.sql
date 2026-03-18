DECLARE
e_Erro1 EXCEPTION;
BEGIN
IF 1 = 1 THEN
    DBMS_OUTPUT.PUT_LINE('Executou primeira linha dentro do IF');
    RAISE e_Erro1;
    DBMS_OUTPUT.PUT_LINE('Executou linha seguinte dentro do IF');
END IF;
DBMS_OUTPUT.PUT_LINE('Executou linha seguinte fora do IF');
EXCEPTION
    WHEN e_Erro1 THEN
        DBMS_OUTPUT.PUT_LINE('Tratar o erro e_Erro1 aqui...');
END;
/