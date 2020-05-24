SET SERVEROUTPUT ON;

DECLARE
    CURSOR show_table IS SELECT HUMAN_ID, INSURANCE_AGENCY, INSURANCE_TYPE FROM human_insurance;
    counter int;
BEGIN

    for record in show_table
    LOOP
    dbms_output.put_line(record.HUMAN_ID || ' | ' || record.INSURANCE_AGENCY || ' | ' || record.INSURANCE_TYPE);
    END LOOP;
    
    removeInsurance(user_id=>1,insur_agency=>'BAB',insur_type=>'ALL'
    );
    removeinsurance(user_id=>3,insur_agency=>'AAA',insur_type=>'Default Insurance'
    );

    for record in show_table
    LOOP
    dbms_output.put_line(record.HUMAN_ID || ' | ' || record.INSURANCE_AGENCY || ' | ' || record.INSURANCE_TYPE);
    END LOOP;

    counter := insuranceAgencyAndCountryCnt(insur_agency=>'AAA',country=>'Thailand'
    );
    dbms_output.put_line('RESULT OF FUNCTION - ' || counter);
END;