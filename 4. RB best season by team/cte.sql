select * from (
	select *, ROW_NUMBER() over (partition by player_display_name, player_id order by rushing_yards) as rownoteam from (
		select * from (	
			select *, ROW_NUMBER() over (partition by player_display_name, recent_team order by rushing_yards desc) as rownoyear
			from (
				select sum(rushing_yards) as rushing_yards, player_display_name, player_id, season, recent_team
				from tblPlayerStats
				where position = 'rb'
				and season >= 2000
				and season_type = 'reg'
				group by player_display_name, player_id, season, recent_team
				) as a
			) as b
		where rownoyear = 1) as c
) as d
--where rownoteam = 1
--group by player_id, player_display_name, recent_team
--order by total_yards desc