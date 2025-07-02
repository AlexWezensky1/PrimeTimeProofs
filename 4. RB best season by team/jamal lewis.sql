--select sum(rushing_yards) as rushing_yards, player_display_name, player_id, season, recent_team
select rushing_yards, player_display_name, player_id, season, recent_team, week, * 
from tblPlayerStats
where season_type = 'reg'
and season = 2003
and player_display_name = 'jamal lewis'
--group by player_display_name, player_id, season, recent_team
order by 6

select sum(rushing_yards) as rushing_yards, player_display_name, player_id, season, recent_team
from tblPlayerStats
where season_type = 'reg'
--and season = 2012
and player_display_name = 'jamal lewis'
group by player_display_name, player_id, season, recent_team
--order by week

select rusher_player_name, rushing_yards, [desc], game_seconds_remaining, * from tblPBP2003
where week = 11
and rusher_player_name = 'j.lewis'
and game_id = '2003_11_BAL_MIA'
order by 4 desc