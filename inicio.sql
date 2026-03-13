/*
Two blocks in  PLSQL

1. Anonymous Block */

DECLARE 
    -- Variable declarations / opctional
    
BEGIN
    -- Exatutable statements / mandatory
    
    EXCEPTION
        -- Exception handling code / optional

END;
/

/*
2. Named Block - Stored as an object in DB
    - PROCEDURE
    - FUNCTION
    - PACKAGE
    - TRIGGER
*/

--------------------------------------------------------------------------------

// Sempre finalizar com / após END
BEGIN
DBMS_OUTPUT.PUT_LINE ('TESTE');
END;
/

BEGIN
DBMS_OUTPUT.PUT_LINE('TESTE2');
END;
/

 // Imprime o DBMS_OUTPUT na janela de saída de script
SET SERVEROUTPUT ON;
BEGIN
DBMS_OUTPUT.PUT_LINE('TESTE3');
END;
/