select * from Players;

select last_name, first_name,city from Players;

select email_address,country,street_address from Players;

select player_id, total_playing_minutes,installed_games from Players;

select  player_id, age_group, total_playing_minutes  from Players;
/*1
Write a query to display for each player - the player_id, amount_spent_usd, 
and a new calculation representing the amount spent in euros, with exchange rate of 0.8.

*/


select  player_id, amount_spent_usd, amount_spent_usd * 0.8 as amount_spend_eur from Players;


/*
2
Write a query to display the player_id, last_name, first_name, amount_spent_usd, installed_games, 
and a new calculation representing the average amount spent on each game
*/

select  player_id, last_name, first_name, amount_spent_usd, installed_games, amount_spent_usd / installed_games as avg_spent from Players;
/*
3
Write a query to display for each player - the player_id, email_address, installed_games, uninstalled_games, 
and a new calculation representing the ratio between installed and uninstalled games */


select  player_id, email_address, installed_games, uninstalled_games, uninstalled_games / installed_games as ratio_between_ins_uns from Players;


/*4
Write a query to display the:

a. player_id

b. player's first_name concatenated with his/hers last_name*/

select player_id, Concat(first_name, ' ',  last_name) as full_name from Players;


/*5
Write a query to display the:

a. player_id

b. email_address

c. country concatenated with city and street_address

d. total playing time in hours (total_playing_minutes / 60)
*/

SELECT player_id, email_address, 
       CONCAT(country, ' ', city, ' ', street_address) AS 'full_address',
       total_playing_minutes / 60 AS 'total_playing_hours'
FROM   players

/* 6
Write a query to display the following string for each player :

‘full name preferred language is preferred_language’

(full name is the result of concatenating first_name and last_name)

for example:

'John Watson preferred language is English' */ 

select  'Full Name  ' Concat(first_name, ' ',  last_name) as full_name , 'and' preferred_language 'is preferred language' from Players;

-- or 
SELECT CONCAT(first_name, ' ' ,last_name, '  preferred language is :', preferred_language) AS 'player preferred_language'
FROM players

use playcenter

-- Write a query to display the distinct values inside the preferred_language column
select DISTINCT preferred_language from players


select DISTINCT gender from players


select DISTINCT  age_group, gender from players
