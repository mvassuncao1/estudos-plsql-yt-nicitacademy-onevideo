create table CUSTOMER
(
cust_id number(8),
cust_name varchar2(40),
dob date,
mobile_no number(11),
city varchar2(40)
);

insert into CUSTOMER values
(2001, 'Marcos Assução', to_date('07/05/1983', 'dd/mm/yyyy'), 31986474945, 'Ribeirão das Neves');

update CUSTOMER set dob = to_date('07/05/1983', 'dd/mm/yyyy') where cust_id = 1000;

alter TABLE customer2 rename to CUSTOMER;

DECLARE
    -- Tipos para ajudar na geração de nomes e cidades aleatórias
    TYPE t_name IS TABLE OF VARCHAR2(40);
    TYPE t_city IS TABLE OF VARCHAR2(40);
    
    v_names  t_name := t_name('Joao Silva', 'Maria Oliveira', 'Carlos Souza', 'Ana Costa', 'Lucas Pereira', 
                              'Julia Reis', 'Marcos Lima', 'Beatriz Santos', 'Ricardo Alves', 'Fernanda Mont');
    v_cities t_city := t_city('Belo Horizonte', 'Sao Paulo', 'Rio de Janeiro', 'Curitiba', 'Salvador');
BEGIN
    FOR i IN 1..10 LOOP
        INSERT INTO CUSTOMER (
            cust_id, 
            cust_name, 
            dob, 
            mobile_no, 
            city
        ) VALUES (
            i,                                                 -- ID sequencial
            v_names(i),                                        -- Nome da lista
            TRUNC(SYSDATE - (DBMS_RANDOM.VALUE(6570, 18250))), -- Data de nascimento aleatória (entre 18 e 50 anos)
            900000000 + i,                                     -- Número de celular fictício
            v_cities(TRUNC(DBMS_RANDOM.VALUE(1, 6)))           -- Cidade aleatória da lista
        );
    END LOOP;
    
    COMMIT; -- Confirma as inserções
    DBMS_OUTPUT.PUT_LINE('10 clientes inseridos com sucesso!');
END;
/

select * from customer where cust_id > 5 order by cust_name;

-- Give customer ID and get the mobile number
declare
input_cost_id       number(8)     := &ID_do_cliente;
var_cust_name       varchar2(40);
result_mobile_no    number(11);
begin
select cust_name, mobile_no into var_cust_name, result_mobile_no from CUSTOMER where cust_id = input_cost_id;
dbms_output.put_line('O telefone de ' || var_cust_name || ' é ' || result_mobile_no);
end;
/
