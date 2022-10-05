CREATE TABLE projects_employee( 
    project_id NUMBER NOT NULL, 
    employee_id NUMBER NOT NULL,
    
    CONSTRAINT unique_pr_emp
    UNIQUE(project_id, employee_id), 
    
    CONSTRAINT project_pr_fk 
    FOREIGN KEY(project_id) 
    REFERENCES projects(project_id), 
    CONSTRAINT project_emp_fk 
    FOREIGN KEY(employee_id) 
    REFERENCES employees(employee_id)
);