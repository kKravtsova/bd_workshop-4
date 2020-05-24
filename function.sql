CREATE OR REPLACE FUNCTION insuranceAgencyAndCountryCnt
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