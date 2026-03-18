CREATE TABLE tb_produto (id_produto NUMBER(10) PRIMARY KEY,
                         nm_produto VARCHAR2(30));
                         
INSERT INTO tb_produto (id_produto  , nm_produto) VALUES (1, 'COCA-COLA');
INSERT INTO tb_produto (id_produto  , nm_produto) VALUES (3, 'COCA-COLA');
                       
INSERT INTO tb_produto (id_produto  , nm_produto) VALUES (1, 'Cola-Cola'); --DUP_VAL_ON_INEX - ORA-00001: restrição exclusiva (SYSTEM.SYS_C008556) violada na tabela SYSTEM.TB_PRODUTO colunas (ID_PRODUTO)
                       
BEGIN
INSERT INTO tb_produto (id_produto  , nm_produto) VALUES (1, 'Cola-Cola');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE('EXCEPTION');
END;
/

DECLARE -- NO_DATA_FOUND 
V_NOME_PRODUTO TB_PRODUTO.NM_PRODUTO%Type;
BEGIN
SELECT NM_PRODUTO INTO V_NOME_PRODUTO FROM tb_produto WHERE id_produto = 1000;
EXCEPTION 
    WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE(SQLCODE || ' - ' || SQLERRM);
END;
/

SELECT * FROM TB_PRODUTO WHERE NM_PRODUTO = 'COCA-COLA';

DECLARE -- TOO_MANY_ROWS -1422 - ORA-01422: a extração exata retornou mais do que o número solicitado de linhas 
V_NOME_PRODUTO TB_PRODUTO.NM_PRODUTO%Type;
BEGIN
SELECT NM_PRODUTO INTO V_NOME_PRODUTO FROM tb_produto WHERE NM_PRODUTO = 'COCA-COLA';
EXCEPTION 
    WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE(SQLCODE || ' - ' || SQLERRM);
    WHEN OTHERS THEN -- Trata qualquer erro
    DBMS_OUTPUT.PUT_LINE(SQLCODE || ' - ' || SQLERRM);
END;
/
