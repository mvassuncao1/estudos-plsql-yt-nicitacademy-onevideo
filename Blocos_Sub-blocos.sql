<<bloco_pai>>
DECLARE
    -- Variáveis do pai
BEGIN
    DBMS_OUTPUT.PUT_LINE('Início do Pai');

    <<bloco_filho>>
    DECLARE
        -- Variáveis do filho
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Dentro do Filho');
    END bloco_filho; -- O nome aqui é opcional, mas ajuda na leitura

    DBMS_OUTPUT.PUT_LINE('Fim do Pai');
END bloco_pai;
/