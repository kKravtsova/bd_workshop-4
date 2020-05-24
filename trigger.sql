CREATE OR REPLACE TRIGGER human_trgr
    AFTER INSERT ON human
    FOR EACH ROW

BEGIN

    INSERT INTO human_insurance (human_id, INSURANCE_AGENCY, INSURANCE_TYPE) VALUES (:new.human_id, 'AAA', 'Default Insurance');

END;