select combo.rbname, combo.recname, season, recent_team as team, combo.rushyds+combo.recyards as totalyards, rushyds, recyards from (	
	select * from (
		select player_display_name as rbname, season as rbseason, recent_team as rbteam, sum(rushing_yards) as rushyds from tblplayerstats
		where position = 'rb'
		and season >= 2000
		and season_type = 'reg'
		group by player_display_name, season, recent_team)
	as rb join (
		select player_display_name as recname, season, recent_team, sum(receiving_yards) as recyards from tblplayerstats
		where position in ('wr','te')
		and season >= 2000
		and season_type = 'reg'
		group by player_display_name, season, recent_team)
	as rec
	on rb.rbteam = rec.recent_team
	and rb.rbseason = rec.season)
as combo
order by totalyards desc
