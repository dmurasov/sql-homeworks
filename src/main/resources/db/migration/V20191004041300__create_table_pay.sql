CREATE TABLE pay(
    cardNR NUMBER(16) PRIMARY KEY, 
    salary NUMBER(8,2), 
    commission_pct NUMBER(2,2), 
    employee_id NUMBER(4) NOT NULL UNIQUE,
    CONSTRAINT employee_fk 
    FOREIGN KEY(employee_id) 
    REFERENCES employees(employee_id)
);