CREATE OR REPLACE PROCEDURE removeInsurance
    (user_id NUMBER,
    insur_agency VARCHAR,
    insur_type VARCHAR)
AS
    found_status NUMBER;
    cant_find EXCEPTION;
BEGIN
    SELECT COUNT(*)
    INTO found_status
    FROM human_insurance
    WHERE human_id = user_id
    AND insurance_agency = insur_agency
    AND insurance_type = insur_type;
    
    IF (found_status = 1) THEN
        DELETE FROM human_insurance
        WHERE human_id = user_id
        AND insurance_agency = insur_agency
        AND insurance_type = insur_type;
    ELSE
        RAISE cant_find;
    END IF;
    
    EXCEPTION
        WHEN cant_find THEN
            dbms_output.put_line('No such user or insurance!');

END;
    