DROP TEMPORARY TABLE IF EXISTS first_rental;
CREATE TEMPORARY TABLE first_rental
SELECT 
	r.customer_id,
	MIN(r.rental_date) first_time
FROM
	rental r
GROUP BY 1
;
---------------------
DROP TEMPORARY TABLE IF EXISTS first_rental;
CREATE TEMPORARY TABLE first_rental
SELECT 
	r.customer_id,
	MIN(r.rental_date) first_time
FROM
	rental r
GROUP BY 1
;

SELECT 
	*
FROM 
	first_rental
;
-----------------------------------
DROP TEMPORARY TABLE IF EXISTS first_rental;
CREATE TEMPORARY TABLE first_rental
SELECT 
	r.customer_id,
	MIN(r.rental_date) first_time
FROM
	rental r
GROUP BY 1
;

DROP TEMPORARY TABLE IF EXISTS cohort_size;
CREATE TEMPORARY TABLE cohort_size
SELECT
	LEFT(first_time, 7),
	COUNT(*)
FROM
	first_rental
GROUP BY 1
;	

