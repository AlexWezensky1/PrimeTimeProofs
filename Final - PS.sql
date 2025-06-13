-- rb and wr/te duo with most combined yards in a season
-- since 2000
-- rb only rushing, wr/te only receiving

select * from (
	select combo.rbname, combo.recname, season, recent_team as team, combo.rushyds + combo.recyards as totalyards, rushyds, recyards, position
		, ROW_NUMBER() over(partition by season, recent_team 
							order by season, recent_team, combo.rushyds + combo.recyards desc) as rownum
	from (
		select * from (
			select player_display_name as rbname, season as rbseason, recent_team as rbteam, sum(rushing_yards) as rushyds from tblplayerstats
			where position = 'rb'
			and season >= 2000
			and season_type = 'reg'
			group by player_display_name, season, recent_team)
		as rb join (
			select player_display_name as recname, season, recent_team, sum(receiving_yards) as recyards, position from tblplayerstats
			where position in ('wr','te')
			and season >= 2000
			and season_type = 'reg'
			group by player_display_name, season, recent_team, position)
		as rec
		on rb.rbteam = rec.recent_team
		and rb.rbseason = rec.season)
	as combo
	--order by season, team, totalyards desc
) 
as ordered
where ordered.rownum = 1
order by totalyards desc 