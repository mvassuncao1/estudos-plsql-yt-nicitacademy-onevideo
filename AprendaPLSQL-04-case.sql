-- Usando Simple CASE - Verifica se uma variável tem exatamente valores específicos: V_NUMERO = 10
DECLARE
V_NUMERO NUMBER := &Número;
BEGIN
    CASE V_NUMERO
    WHEN (10) THEN
        DBMS_OUTPUT.PUT_LINE('O número é igual a 10');
    WHEN (20) THEN
        DBMS_OUTPUT.PUT_LINE('O número é igual a 20');
    WHEN (30) THEN
        DBMS_OUTPUT.PUT_LINE('O número é igual a 30');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O número é diferente de 10, 20 e 30');
    END CASE;
END;
/

-- Usando Searched CASE - Verifica se uma variável atende a uma condição: V_NUMERO2 > 10
DECLARE
V_NUMERO2 NUMBER := &Número;
BEGIN
CASE 
    WHEN V_NUMERO2 = 10 THEN
        DBMS_OUTPUT.PUT_LINE('O número é igual a 10');
    WHEN V_NUMERO2 > 10 THEN
        DBMS_OUTPUT.PUT_LINE('O número é maior que 10');
    WHEN V_NUMERO2 < 10 THEN
        DBMS_OUTPUT.PUT_LINE('O número é menor que 10');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Não vai entrar aqui');
END CASE;
END;