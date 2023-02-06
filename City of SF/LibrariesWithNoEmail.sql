--Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email.
--Output the library code.
select distinct(home_library_code) from library_usage
where circulation_active_year = 2016 and notice_preference_definition = 'email' and provided_email_address = 0;
