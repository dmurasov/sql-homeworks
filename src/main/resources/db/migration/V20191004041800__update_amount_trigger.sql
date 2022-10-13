CREATE OR REPLACE TRIGGER update_amount_departments
AFTER DELETE OR INSERT ON DEPARTMENTS 
FOR EACH ROW 
    
BEGIN
    CASE 
        WHEN INSERTING THEN 
            UPDATE LOCATIONS SET department_amount = department_amount + 1 WHERE location_id = :new.location_id; 
        WHEN DELETING THEN 
            UPDATE LOCATIONS SET department_amount = department_amount - 1 WHERE location_id = :new.location_id; 
    END CASE;
END;