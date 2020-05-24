CREATE OR REPLACE PACKAGE package_lab_4 AS

    FUNCTION insuranceAgencyAndCountryCnt
    (insur_agency insurance.insurance_agency%type,
    country country.country_name%type) RETURN INT;

    PROCEDURE removeInsurance
    (user_id NUMBER,
    insur_agency VARCHAR,
    insur_type VARCHAR);

END package_lab_4;

/

CREATE OR REPLACE PACKAGE BODY package_lab_4  AS

    FUNCTION insuranceAgencyAndCountryCnt
        (insur_agency insurance.insurance_agency%type,
        country country.country_name%type) RETURN INT
    AS
        counter INT;
    BEGIN
        SELECT COUNT(*)
        INTO counter
        FROM insurance_country
        WHERE country_name = country
        AND insurance_agency = insur_agency;
        
        RETURN counter;
    END;
    
    PROCEDURE removeInsurance
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

END package_lab_4;
/