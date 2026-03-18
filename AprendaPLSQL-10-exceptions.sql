CREATE TABLE tb_produto (id_produto NUMBER(10) PRIMARY KEY,
                         nm_produto VARCHAR2(30));
                         
INSERT INTO tb_produto (id_produto  , nm_produto) VALUES (1, 'COCA-COLA');
                       
INSERT INTO tb_produto (id_produto  , nm_produto) VALUES (1, 'Cola-Cola'); --ORA-00001: restrição exclusiva (SYSTEM.SYS_C008556) violada na tabela SYSTEM.TB_PRODUTO colunas (ID_PRODUTO)
                       
BEGIN
INSERT INTO tb_produto (id_produto  , nm_produto) VALUES (1, 'Cola-Cola');
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE('EXCEPTION');
END;
/
                       