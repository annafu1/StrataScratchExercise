-- Rank guests based on the number of messages they've exchanged with the hosts. 
-- Guests with the same number of messages as other guests should have the same rank. 
-- Do not skip rankings if the preceding rankings are identical.
-- Output the rank, guest id, and number of total messages they've sent. 
Order by the lowest number of total messages third.
select id_guest, 
dense_rank() over (order by sum(n_messages) desc) as ranks, sum(n_messages) messages
from airbnb_contacts
group by id_guest
order by messages desc;