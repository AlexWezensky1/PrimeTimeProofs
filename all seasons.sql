select *
from (	
	select *, ROW_NUMBER() over (partition by player_display_name, recent_team order by rushing_yards desc) as rowno
	from (
		select sum(rushing_yards) as rushing_yards, player_display_name, player_id, season, recent_team
		from tblPlayerStats
		where position = 'rb'
		and season >= 2000
		and season_type = 'reg'
		group by player_display_name, player_id, season, recent_team
		) as a
	) as b
where rowno = 1
order by player_display_name, season