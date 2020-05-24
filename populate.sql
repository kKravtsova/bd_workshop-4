INSERT INTO country (country_name) VALUES ('Ukraine');
INSERT INTO country (country_name) VALUES ('Thailand');
INSERT INTO country (country_name) VALUES ('USA');

INSERT INTO human (human_id, human_name, human_gender) VALUES (1, 'Bob', 'male');
INSERT INTO human (human_id, human_name, human_gender) VALUES (2, 'Boba', 'female');
INSERT INTO human (human_id, human_name, human_gender) VALUES (3, 'Bobka', 'female');

INSERT INTO human_trip (human_id, trip_date, country_name) VALUES (1, '20.04.20', 'Thailand');
INSERT INTO human_trip (human_id, trip_date, country_name) VALUES (2, '25.04.20', 'Thailand');
INSERT INTO human_trip (human_id, trip_date, country_name) VALUES (3, '20.04.20', 'Thailand');

INSERT INTO insurance (insurance_agency, insurance_type) VALUES ('CBH', 'Excess Insurance');
INSERT INTO insurance (insurance_agency, insurance_type) VALUES ('CBH', 'Value Plan');
INSERT INTO insurance (insurance_agency, insurance_type) VALUES ('AAA', 'Default Insurance');

INSERT INTO human_insurance (human_id, insurance_agency, insurance_type) VALUES (1, 'AAA', 'Default Insurance');
INSERT INTO human_insurance (human_id, insurance_agency, insurance_type) VALUES (2, 'AAA', 'Default Insurance');
INSERT INTO human_insurance (human_id, insurance_agency, insurance_type) VALUES (3, 'AAA', 'Default Insurance');