INSERT INTO regions 
VALUES(2, 'Americas'); 

INSERT INTO countries 
VALUES('US', 'United States of America', 2); 

INSERT INTO locations
VALUES(1700, '2000 Charade Rd', 98100, 'Seattle', 'Washington', 'US'); 

INSERT INTO departments
VALUES(10, 'Administration', null, 1700); 

INSERT INTO jobs 
VALUES('SH_CLERK', 'Shipping Clerk', 2500, 5500); 

INSERT INTO employees 
VALUES(198,	'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', 
        TO_DATE('21-06-07', 'dd-MM-yyyy'), 'SH_CLERK', 2600, NULL, NULL, 10); 

INSERT INTO job_history
VALUES(198,
        TO_DATE('10-JUL-2000', 'dd-MM-yyyy'), 
        TO_DATE('25-FEB-2001', 'dd-MM-yyyy'), 
        'SH_CLERK', 10);