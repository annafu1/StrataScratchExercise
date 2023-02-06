--Find the activity date and the pe_description of facilities with the name 'STREET CHURROS' and with a score of less than 95 points.
select activity_date,pe_description from los_angeles_restaurant_health_inspections
where facility_name = 'STREET CHURROS' AND score < 95;
