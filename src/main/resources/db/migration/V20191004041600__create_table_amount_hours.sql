CREATE TABLE amount_hours( 
    employee_id NUMBER(6) NOT NULL, 
    project_id NUMBER(6) NOT NULL, 
    hours NUMBER(4) NOT NULL,
    
    CONSTRAINT emp_id_prj_id_pk
    PRIMARY KEY (employee_id, project_id),
    CONSTRAINT emp_id_fk 
    FOREIGN KEY (employee_id) 
    REFERENCES employees (employee_id),
    CONSTRAINT wprj_id_fk 
    FOREIGN KEY (project_id) 
    REFERENCES projects (project_id)
);