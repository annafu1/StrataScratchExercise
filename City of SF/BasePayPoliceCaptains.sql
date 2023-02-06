--Find the base pay for Police Captains.
--Output the employee name along with the corresponding base pay.
select employeename,basepay from sf_public_salaries
where jobtitle like '%Captain%Police%';
