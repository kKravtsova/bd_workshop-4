CREATE OR REPLACE VIEW insurance_country AS
    SELECT human_insurance.human_id,
    human_insurance.insurance_agency,
    human_insurance.insurance_type,
    human_trip.country_name,
    human_trip.trip_date
    FROM human_insurance
    JOIN human_trip ON human_insurance.human_id = human_trip.human_id;