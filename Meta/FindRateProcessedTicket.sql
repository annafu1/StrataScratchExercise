-- Find the rate of processed tickets for each type.
select type, sum(processed)/count(*) as processed_rate from facebook_complaints
group by type;