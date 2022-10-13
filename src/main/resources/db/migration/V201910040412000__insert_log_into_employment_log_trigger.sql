CREATE OR REPLACE TRIGGER insert_log_into_employement_log 
AFTER DELETE OR INSERT ON employees 
FOR EACH ROW 
DECLARE 
    first_name employment_logs.first_name%type;
    last_name employment_logs.last_name%type;
    employment_action employment_logs.employment_action%type;
    employment_status_updtd_tmstmp employment_logs.employment_status_updtd_tmstmp%type; 
BEGIN
    IF inserting THEN 
        first_name := :new.first_name; last_name := :new.last_name; 
        employment_action := 'HIRED'; 
        create_log(first_name, last_name, employment_action,  employment_status_updtd_tmstmp);
    ELSE 
        first_name := :old.first_name; 
        last_name := :old.last_name; 
        employment_action := 'FIRED';
        create_log(first_name, last_name, employment_action, employment_status_updtd_tmstmp);
    END IF;
END;