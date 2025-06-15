declare @now datetime = '2024-12-31'
--select sum(total_fantasy_points) as totalpts, player_id, r.full_name, ff.season, r.birth_date, 
select total_fantasy_points as totalpts, player_id, r.full_name, ff.season, r.birth_date, ff.game_id, *,
	(CONVERT(int,CONVERT(char(8),@now,112))-CONVERT(char(8),birth_date,112))/10000 as age
from tblFFOpportunityWeekly as ff
join tblRosters r
on r.gsis_id = ff.player_id
where ff.season = 2024
and r.full_name = 'Jahmyr Gibbs'
--and ff.week = 1
and r.years_exp = 0
--group by player_id, ff.season, r.birth_date, r.full_name