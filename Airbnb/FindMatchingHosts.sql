-- Find matching hosts and guests pairs in a way that they are both of the same gender and nationality.
-- Output the host id and the guest id of matched pair.
select distinct(host_id), guest_id from airbnb_hosts as aHosts
join airbnb_guests as aGuests on aHosts.nationality = aGuests.nationality
and aHosts.gender = aGuests.gender;