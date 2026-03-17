create table COSTUMER
(
cust_id number(8),
cust_name varchar2(40),
dob date,
mobile_no number(11),
city varchar2(40)
);

insert into COSTUMER values
(1001, 'Marcos Assução', to_date('07/05/1983', 'dd/mm/yyyy'), 31986474945, 'Ribeirão das Neves');

update COSTUMER set dob = to_date('07/05/1983', 'dd/mm/yyyy') where cust_id = 1000;

alter TABLE customer2 rename to CUSTOMER;