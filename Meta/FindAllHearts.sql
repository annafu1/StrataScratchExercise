--Find all posts which were reacted to with a heart.
--For such posts output all columns from facebook_posts table.
select * from facebook_posts
where post_id in (select post_id from facebook_reactions where reaction = 'heart');
