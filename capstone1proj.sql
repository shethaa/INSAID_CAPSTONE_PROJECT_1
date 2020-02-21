use Capstone1; 
SELECT COUNT(*) FROM phone_brand_device_model pbdm 
inner join events_data et on pbdm.device_id = et.device_id 
where state in ('MadhyaPradesh', 'Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland');

SELECT COUNT(*) FROM phone_brand_device_model;

SELECT COUNT(*) FROM gender_age_train;

SELECT COUNT(DISTINCT device_id) from events_data where state in ('MadhyaPradesh', 'Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland');

SELECT * FROM gender_age_train LIMIT 10;

SELECT COUNT(*) from events_data where state in ('MadhyaPradesh');

SELECT COUNT(*) from events_data where state in ('Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland');

SELECT DISTINCT device_id from events_data where state in ('MadhyaPradesh', 'Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland');

SELECT * from events_data where state in ('Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland');

SELECT * from events_data where state in ('Nagaland');

SELECT * from events_data where state in ('MadhyaPradesh');

SELECT * FROM gender_age_train WHERE device_id IN (
SELECT DISTINCT device_id from events_data where state in ('MadhyaPradesh', 'Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland'));

SELECT COUNT(*) FROM gender_age_train WHERE device_id IN (SELECT DISTINCT device_id from events_data where state in ('MadhyaPradesh', 'Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland'));

SELECT * FROM phone_brand_device_model WHERE device_id IN (SELECT DISTINCT device_id from events_data where state in ('MadhyaPradesh', 'Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland'));

SELECT COUNT(*) FROM phone_brand_device_model WHERE device_id IN (SELECT DISTINCT device_id from events_data where state in ('MadhyaPradesh', 'Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland'));

SELECT length(device_id) FROM events_data WHERE event_id IN (10117, 22093);

SELECT event_id, device_id FROM events_data WHERE event_id IN (10117, 22093, 20984);

SELECT CAST(device_Id AS CHAR) AS device_id, gender, age, `group` FROM gender_age_train WHERE device_id IN (SELECT DISTINCT device_id from events_data where state in ('MadhyaPradesh', 'Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland'));

SELECT age, COUNT(age) FROM gender_age_train WHERE device_id IN (
	SELECT DISTINCT device_id FROM events_data WHERE state IN 
    ('MadhyaPradesh', 'Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland') 
    )
    GROUP BY age;
    
SELECT gender, age, `group` FROM gender_age_train WHERE device_id IN (
	SELECT DISTINCT device_id FROM events_data WHERE state IN 
    ('MadhyaPradesh', 'Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland') 
    ) ORDER BY gender, age;
    /*GROUP BY age;*/
    
SELECT DISTINCT `group` FROM gender_age_train WHERE device_id IN (
	SELECT DISTINCT device_id FROM events_data WHERE state IN 
    ('MadhyaPradesh', 'Chhattisgarh', 'Uttaranchal', 'JammuandKashmir', 'JammuandKashmir', 'Goa', 'Nagaland') 
    ) ORDER BY `group`;