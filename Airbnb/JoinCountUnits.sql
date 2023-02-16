-- Find the number of apartments per nationality that are owned by people under 30 years old.
-- Output the nationality along with the number of apartments.
select aHosts.nationality, COUNT(*) from (select distinct host_id, nationality, age from airbnb_hosts)
aHosts join airbnb_units AS aUnits on aHosts.host_id = aUnits.host_id
where aHosts.age < 30 and aUnits.unit_type = 'Apartment'
group by aHosts.nationality desc;