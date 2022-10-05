CREATE TABLE projects( 
    project_id NUMBER(6) PRIMARY KEY, 
    project_description VARCHAR(255), 
    project_investments NUMBER(6, -3) NOT NULL, 
    project_revenue NUMBER(10, 2),
    
    CONSTRAINT proj_min_desc CHECK( 
        LENGTH(project_description) > 10),
    CONSTRAINT proj_inv_min CHECK( 
        project_investments > 0)
); 