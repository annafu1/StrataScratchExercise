-- Find the titles of workers that earn the highest salary. Output the highest-paid title or multiple titles that share the highest salary
select t.worker_title from worker as w 
join title as t on w.worker_id = t.worker_ref_id 
where salary in (select max(salary) from worker);