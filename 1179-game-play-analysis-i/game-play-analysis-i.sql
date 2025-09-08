# Write your MySQL query statement below
select player_id,event_date as first_login from (
select player_id, event_date,
rank() over(partition by player_id order by event_date) as rank_no
from Activity ) m
where rank_no = 1