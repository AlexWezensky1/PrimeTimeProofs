--select player_display_name as rbname, season as rbseason, recent_team as rbteam, sum(rushing_yards) as rushyds from tblplayerstats
select player_display_name as rbname, season as rbseason, recent_team as rbteam, rushing_yards as rushyds, week from tblplayerstats
where position = 'rb'
and season = 2000
and season_type = 'reg'
and player_display_name = 'mike anderson'
--group by player_display_name, season, recent_team

--select player_display_name as recname, season, recent_team, sum(receiving_yards) as recyards from tblplayerstats
select player_display_name as recname, season, recent_team, receiving_yards as recyards, week ,* from tblplayerstats
where position in ('wr','te')
and season = 2000
and season_type = 'reg'
and player_display_name = 'marvin harrison'
--group by player_display_name, season, recent_team