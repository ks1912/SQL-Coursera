/*Data Scientist Role Play: Profiling and Analyzing the Yelp Dataset Worksheet

Part 1: Yelp Dataset Profiling and Understanding

1. Profile the data by finding the total number of records for each of the tables below:
	
i. Attribute table = 10000 */
select Count(*)
from Attribute;
/*
+----------+
| Count(*) |
+----------+
|    10000 |
+----------+
*/
-- ii. Business table = 10000
select Count(*)
from Business;
/*
+----------+
| Count(*) |
+----------+
|    10000 |
+----------+
*/
-- iii. Category table = 10000
select Count(*)
from Category;
/*
+----------+
| Count(*) |
+----------+
|    10000 |
+----------+
*/
-- iv. Checkin table = 10000
select Count(*)
from Checkin;
/*
+----------+
| Count(*) |
+----------+
|    10000 |
+----------+
*/
-- v. elite_years table = 10000
select Count(*)
from elite_years;
/*
+----------+
| Count(*) |
+----------+
|    10000 |
+----------+
*/
-- vi. friend table = 10000
select Count(*)
from friend;
/*
+----------+
| Count(*) |
+----------+
|    10000 |
+----------+
*/
-- vii. hours table = 10000
select Count(*)
from hours;
/*
+----------+
| Count(*) |
+----------+
|    10000 |
+----------+
*/
-- viii. photo table = 10000
select Count(*)
from photo;
/*
+----------+
| Count(*) |
+----------+
|    10000 |
+----------+
*/
-- ix. review table = 10000
select Count(*)
from review;
/*
+----------+
| Count(*) |
+----------+
|    10000 |
+----------+
*/
-- x. tip table = 10000
select Count(*)
from tip;
/*
+----------+
| Count(*) |
+----------+
|    10000 |
+----------+
*/
-- xi. user table = 10000
select Count(*)
from user;
/*
+----------+
| Count(*) |
+----------+
|    10000 |
+----------+
*/

/*
2. Find the total distinct records by either the foreign key or primary key for each table. 
If two foreign keys are listed in the table, please specify which foreign key.
Note: Primary Keys are denoted in the ER-Diagram with a yellow key icon.
*/
-- i. Business = 10000 (id)
select count(distinct id)
from hours;
/*
+-----------------------------+
| count(distinct          id) |
+-----------------------------+
|                       10000 |
+-----------------------------+
*/
--ii. Hours = 1562 (bisiness_id)
select count(distinct business_id)
from hours;
/*
+-----------------------------+
| count(distinct business_id) |
+-----------------------------+
|                        1562 |
+-----------------------------+
*/
--iii. Category = (business_id)
select count(distinct business_id)
from Category;
/*
+-----------------------------+
| count(distinct business_id) |
+-----------------------------+
|                        2643 |
+-----------------------------+
*/
--iv. Attribute = 1115 (business_id)
select count(distinct business_id)
from Attribute;
/*
+-----------------------------+
| count(distinct business_id) |
+-----------------------------+
|                        1115 |
+-----------------------------+
*/
--v. Review = 10000 (id) , 9581 (user_id), 8090 (business_id)
select count(distinct id),
count(distinct user_id),
count(distinct business_id)
from Review;
/*
+--------------------+-------------------------+-----------------------------+
| count(distinct id) | count(distinct user_id) | count(distinct business_id) |
+--------------------+-------------------------+-----------------------------+
|              10000 |                    9581 |                        8090 |
+--------------------+-------------------------+-----------------------------+
*/
--vi. Checkin = 493 (business_id)
select count(distinct business_id)
from Checkin;
/*
+-----------------------------+
| count(distinct business_id) |
+-----------------------------+
|                         493 |
+-----------------------------+
*/
--vii. Photo = id (10000) , business_id ( 6493 )
select count(distinct id),
count(distinct business_id)
from Photo;
/*
+--------------------+-----------------------------+
| count(distinct id) | count(distinct business_id) |
+--------------------+-----------------------------+
|              10000 |                        6493 |
+--------------------+-----------------------------+
*/
--viii. Tip = user_id (537), business_id (3979)
select count(distinct user_id),
count(distinct business_id)
from Tip;
/*
+-------------------------+-----------------------------+
| count(distinct user_id) | count(distinct business_id) |
+-------------------------+-----------------------------+
|                     537 |                        3979 |
+-------------------------+-----------------------------+
*/
--ix. User = 10000 (id)
select count(distinct id)
from user;
/*
+--------------------+
| count(distinct id) |
+--------------------+
|              10000 |
+--------------------+
*/
--x. Friend = 11 (user_id)
select count(distinct user_id)
from friend;
/*
+-------------------------+
| count(distinct user_id) |
+-------------------------+
|                      11 |
+-------------------------+
*/
--xi. Elite_years = 2780 (user_id)
select count(distinct user_id)
from Elite_years;
/*
+-------------------------+
| count(distinct user_id) |
+-------------------------+
|                    2780 |
+-------------------------+


3. Are there any columns with null values in the Users table? Indicate "yes," or "no."
Answer: NO 

+----+------+--------------+---------------+--------+-------+------+------+---------------+----------------+-----------------+--------------------+-----------------+-----------------+-----------------+------------------+-----------------+------------------+-------------------+-------------------+
| id | name | review_count | yelping_since | useful | funny | cool | fans | average_stars | compliment_hot | compliment_more | compliment_profile | compliment_cute | compliment_list | compliment_note | compliment_plain | compliment_cool | compliment_funny | compliment_writer | compliment_photos |
+----+------+--------------+---------------+--------+-------+------+------+---------------+----------------+-----------------+--------------------+-----------------+-----------------+-----------------+------------------+-----------------+------------------+-------------------+-------------------+
+----+------+--------------+---------------+--------+-------+------+------+---------------+----------------+-----------------+--------------------+-----------------+-----------------+-----------------+------------------+-----------------+------------------+-------------------+-------------------+
(Zero rows)


SQL code used to arrive at answer:
*/
select id, name, review_count, yelping_since, useful, funny, cool, fans, average_stars, 
			   compliment_hot, compliment_more, compliment_profile, compliment_cute, compliment_list, 
			   compliment_note, compliment_plain, compliment_cool, compliment_funny, compliment_writer, compliment_photos
		from  user
		where 	id is null
				or name is null
				or review_count is null
				or yelping_since is null
				or useful is null
				or funny is null
				or cool is null
				or fans is null
				or average_stars is null
				or compliment_hot is null
				or compliment_more is null
				or compliment_profile is null
				or compliment_cute is null
				or compliment_list is null
				or compliment_note is null
				or compliment_plain is null
				or compliment_cool is null
				or compliment_funny is null
				or compliment_writer is null
				or compliment_photos is null
				
				
/*
4. For each table and column listed below, display the smallest (minimum), largest (maximum), and average (mean) value for the following fields:

	i. Table: Review, Column: Stars
	
		min:	1	max:	5	avg:	3.7082
		
+---------+---------+---------+
| Minimum | Maximum | Average |
+---------+---------+---------+
|       1 |       5 |  3.7082 |
+---------+---------+---------+
*/
SELECT MIN(stars) AS Minimum,
MAX(stars) AS Maximum,
AVG(stars) AS Average 
FROM review; 
/*

	ii. Table: Business, Column: Stars
	
		min:	1	max: 5.0	avg:3.6549
		
+---------+---------+---------+
| Minimum | Maximum | Average |
+---------+---------+---------+
|     1.0 |     5.0 |  3.6549 |
+---------+---------+---------+

*/
SELECT MIN(stars) AS Minimum,
MAX(stars) AS Maximum,
AVG(stars) AS Average 
FROM Business; 
/*
	
	iii. Table: Tip, Column: Likes
	
		min:	0	max:	2	avg:	0.0144
		
	
+---------+---------+---------+
| Minimum | Maximum | Average |
+---------+---------+---------+
|       0 |       2 |  0.0144 |
+---------+---------+---------+
	
*/
SELECT MIN(likes) AS Minimum,
MAX(likes) AS Maximum,
AVG(likes) AS Average 
FROM Tip; 
/*
	iv. Table: Checkin, Column: Count
	
		min:	1	max:	53	avg:	1.9414
		
+---------+---------+---------+
| Minimum | Maximum | Average |
+---------+---------+---------+
|       1 |      53 |  1.9414 |
+---------+---------+---------+	
	
	
*/
SELECT MIN(count) AS Minimum,
MAX(count) AS Maximum,
AVG(count) AS Average 
FROM Checkin; 
/*
	v. Table: User, Column: Review_count
	
		min:	0	max:	2000	avg:24.2995
		
---------+---------+---------+
| Minimum | Maximum | Average |
+---------+---------+---------+
|       0 |    2000 | 24.2995 |
+---------+---------+---------+
*/
SELECT MIN(review_count) AS Minimum,
MAX(review_count) AS Maximum,
AVG(review_count) AS Average 
FROM user;
/*

5. List the cities with the most reviews in descending order:

	SQL code used to arrive at answer:
*/
select 
city, 
sum(review_count)
from business
group by city
order by sum(review_count) desc;
/*	
	Copy and Paste the Result Below:
	
+-----------------+-------------------+
| city            | sum(review_count) |
+-----------------+-------------------+
| Las Vegas       |             82854 |
| Phoenix         |             34503 |
| Toronto         |             24113 |
| Scottsdale      |             20614 |
| Charlotte       |             12523 |
| Henderson       |             10871 |
| Tempe           |             10504 |
| Pittsburgh      |              9798 |
| Montréal        |              9448 |
| Chandler        |              8112 |
| Mesa            |              6875 |
| Gilbert         |              6380 |
| Cleveland       |              5593 |
| Madison         |              5265 |
| Glendale        |              4406 |
| Mississauga     |              3814 |
| Edinburgh       |              2792 |
| Peoria          |              2624 |
| North Las Vegas |              2438 |
| Markham         |              2352 |
| Champaign       |              2029 |
| Stuttgart       |              1849 |
| Surprise        |              1520 |
| Lakewood        |              1465 |
| Goodyear        |              1155 |
+-----------------+-------------------+
(Output limit exceeded, 25 of 362 total rows shown)

6. Find the distribution of star ratings to the business in the following cities:

i. Avon

SQL code used to arrive at answer:

*/
select 
stars as [Star Rating], 
count(stars) as [Count]
from business b
where city = 'Avon'
group by stars;
/*

Copy and Paste the Resulting Table Below (2 columns â€“ star rating and count):

+-------------+-------+
| Star Rating | Count |
+-------------+-------+
|         1.5 |     1 |
|         2.5 |     2 |
|         3.5 |     3 |
|         4.0 |     2 |
|         4.5 |     1 |
|         5.0 |     1 |
+-------------+-------+

ii. Beachwood

SQL code used to arrive at answer:

*/
select 
stars as [Star Rating], 
count(stars) as [Count]
from business b
where city = 'Beachwood'
group by stars;
/*

Copy and Paste the Resulting Table Below (2 columns â€“ star rating and count):

+-------------+-------+
| Star Rating | Count |
+-------------+-------+
|         2.0 |     1 |
|         2.5 |     1 |
|         3.0 |     2 |
|         3.5 |     2 |
|         4.0 |     1 |
|         4.5 |     2 |
|         5.0 |     5 |
+-------------+-------+

7. Find the top 3 users based on their total number of reviews:
		
	SQL code used to arrive at answer:
	
*/

select 
name, 
review_count
from user
order by review_count desc
limit 3;

/*	
	Copy and Paste the Result Below:

+--------+--------------+
| name   | review_count |
+--------+--------------+
| Gerald |         2000 |
| Sara   |         1629 |
| Yuri   |         1339 |
+--------+--------------+


8. Does posing more reviews correlate with more fans?
    -> NO.
	
	Please explain your findings and interpretation of the results:
	
	According to the question when I have fatched the data I can clearly see that Amy poses 609 Review and has maximum fans ( 609 )
	Where as Gerald Post 2000 review and has less fans (253) then Amy. 
	SQL QUARRY
*/
select name, 
review_count, 
fans
from user
order by fans desc
limit 10;
/*
RESULT 
+-----------+--------------+------+
| name      | review_count | fans |
+-----------+--------------+------+
| Amy       |          609 |  503 |
| Mimi      |          968 |  497 |
| Harald    |         1153 |  311 |
| Gerald    |         2000 |  253 |
| Christine |          930 |  173 |
| Lisa      |          813 |  159 |
| Cat       |          377 |  133 |
| William   |         1215 |  126 |
| Fran      |          862 |  124 |
| Lissa     |          834 |  120 |
+-----------+--------------+------+

9. Are there more reviews with the word "love" or with the word "hate" in them?

	Answer:

	
	SQL code used to arrive at answer:
*/

select (select count(text)
from review
where text like "%love%") as  love_text, 
(select count(text) 
from review
where text like "%hate%") as hate_text;

/* RESULT
+-----------+-----------+
| love_text | hate_text |
+-----------+-----------+
|      1780 |       232 |
+-----------+-----------+


10. Find the top 10 users with the most fans:

	SQL code used to arrive at answer:
*/
select name, fans
from user
order by fans desc
limit 10;
/*	
	Copy and Paste the Result Below:
	
+-----------+------+
| name      | fans |
+-----------+------+
| Amy       |  503 |
| Mimi      |  497 |
| Harald    |  311 |
| Gerald    |  253 |
| Christine |  173 |
| Lisa      |  159 |
| Cat       |  133 |
| William   |  126 |
| Fran      |  124 |
| Lissa     |  120 |
+-----------+------+


Part 2: Inferences and Analysis

1. Pick one city and category of your choice and group the businesses in that city or category by their overall star rating. 
Compare the businesses with 2-3 stars to the businesses with 4-5 stars and answer the following questions. 
Include your code.
	
i. Do the two groups you chose to analyze have a different distribution of hours?
ANSWER:	I picked Las Vegas and Food for this question. Yes. The restaurants with only 2.5 stars open from 8:00 to 22:00 on Saturday. 
Whereas 4.0 Star resturents are open from 10:00 to 19:00 on Saturday
The places with higher rating stars open late on Saturday. 

ii. Do the two groups you chose to analyze have a different number of reviews?
ANSWER:	Yes. The group with 2.0 to 3.0 stars has less review (6) compared with the 
group with higher rating stars where they have (30) reviews.         
         
iii. Are you able to infer anything from the location data provided between these two groups? Explain.
ANSWER: No they have different address.

+-----------------------------+-----------+----------+-------+----------------------+--------------+-----------------------------+-------------+
| name                        | city      | category | stars | hours                | review_count | address                     | postal_code |
+-----------------------------+-----------+----------+-------+----------------------+--------------+-----------------------------+-------------+
| Walgreens                   | Las Vegas | Food     |   2.5 | Saturday|8:00-22:00  |            6 | 3808 E Tropicana Ave        | 89121       |
| Sweet Ruby Jane Confections | Las Vegas | Food     |   4.0 | Saturday|10:00-19:00 |           30 | 8975 S Eastern Ave, Ste 3-B | 89123       |
+-----------------------------+-----------+----------+-------+----------------------+--------------+-----------------------------+-------------+
SQL code used for analysis:

*/
SELECT
b.name,
b.city,
c.category,
b.stars,
h.hours,
b.review_count,
b.address,
b.postal_code
FROM (business b INNER JOIN category c ON b.id = 
c.business_id) INNER JOIN hours h ON h.business_id =
b.id
WHERE b.city = 'Toronto' AND c.category = "Food"
GROUP BY b.stars;
/*

2. Group business based on the ones that are open and the ones that are closed. 
What differences can you find between the ones that are still open and the ones that are closed? 
List at least two differences and the SQL code you used to arrive at your answer.
		
i. Difference 1:
         The close business have less stars then the count one which are still open.
         
ii. Difference 2:
         
         The open business has more review_count then the closed one.
         
		 
+---------------+---------------------+---------------------+--------------------------------+---------+
|  AVG(b.stars) | SUM(b.review_count) | AVG(b.review_count) | COUNT(r.useful)+COUNT(r.funny) | is_open |
+---------------+---------------------+---------------------+--------------------------------+---------+
|           2.0 |                   4 |                 4.0 |                              2 |       0 |
| 2.96153846154 |                 504 |       38.7692307692 |                             26 |       1 |
+---------------+---------------------+---------------------+--------------------------------+---------+


SQL code used for analysis:

*/
SELECT
AVG(b.stars),
SUM(b.review_count),
AVG(b.review_count),
COUNT(r.useful)+COUNT(r.funny),
is_open
FROM business b INNER JOIN review r ON b.id = r.id
GROUP BY b.is_open;
/*	
	
3. For this last part of your analysis, you are going to choose the type of analysis you want to conduct on the Yelp dataset 
and are going to prepare the data for analysis.

Ideas for analysis include: Parsing out keywords and business attributes for sentiment analysis, 
clustering businesses to find commonalities or anomalies between them, predicting the overall star rating for a business, 
predicting the number of fans a user will have, and so on. These are just a few examples to get you started, 
so feel free to be creative and come up with your own problem you want to solve. Provide answers, in-line, 
to all of the following:
	
i. Indicate the type of analysis you chose to do:
ANSWER:    I will perform analysis on Food.     
         
ii. Write 1-2 brief paragraphs on the type of data you will need for your analysis and why you chose that data:
ANSWER: I will pick several types of food including “Chinese”,”Mexican”,”Korean”,”French”,”Italian”,”Japanese” and “Indian”. 
Then I will analyze their star ratings and number of reviews so that I can get some insights on which type of food is popular.                     
Also the total number of restaurants and the in which city. Highest ranking restaurants is Korean where as least ranking
restaurants are Japanese. But number of Japanese resturents are more then the Korean restaurants.
                  
iii. Output of your finished dataset:
ANSWER:
+----------+------------------+---------------+-------------------+-----------+
| category | Total_Resturants |    AVG(stars) | AVG(review_count) | city      |
+----------+------------------+---------------+-------------------+-----------+
| Korean   |                7 |           4.5 |               8.0 | Toronto   |
| French   |               12 |           4.0 |     135.083333333 | Las Vegas |
| Chinese  |               13 | 3.76923076923 |     423.230769231 | Las Vegas |
| Mexican  |               28 |         3.625 |              73.0 | Edinburgh |
| Italian  |               13 | 3.53846153846 |     78.2307692308 | Montréal  |
| Indian   |                6 |           3.5 |              32.0 | Aurora    |
| Japanese |               20 |         3.475 |             22.85 | Toronto   |
+----------+------------------+---------------+-------------------+-----------+        
         
iv. Provide the SQL code you used to create your final dataset:
ANSWER:	
*/
SELECT 
c.category,
COUNT(b.name) AS Total_Resturants,
AVG(stars),
AVG(review_count),
b.city
FROM (business b INNER JOIN hours h ON b.id = h.business_id)
INNER JOIN category c ON c.business_id = b.id
WHERE c.category IN ("Chinese","Mexican","French","Italian","Korean","Japanese","Indian")
GROUP BY c.category
ORDER BY AVG(stars) DESC;