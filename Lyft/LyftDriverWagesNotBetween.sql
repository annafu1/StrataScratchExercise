-- Find all Lyft drivers who earn either equal to or less than 30k USD or equal to or less than 70k USD.
-- Output all details related to retrieved records.
SELECT * FROM lyft_drivers
WHERE yearly_salary NOT BETWEEN 30001 AND 70000;