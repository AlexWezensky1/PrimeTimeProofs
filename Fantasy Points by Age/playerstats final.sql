declare @now datetime = '2024-12-31'
select * from (
	select *, ROW_NUMBER() over (partition by age order by totalppr desc) as rankno	from (
		select season, birth_date, p.position,
			(CONVERT(int,CONVERT(char(8),@now,112))-CONVERT(char(8),birth_date,112))/10000 as age, 
			player_display_name, sum(fantasy_points_ppr) as totalppr
		from tblPlayerStats ps
		join tblPlayers p
		on p.gsis_id = ps.player_id
		where season = 2024
		and season_type = 'reg'
		--and p.position not in ('qb','rb','wr','te')
		group by player_display_name, season, birth_date, p.position
	) a
) b
where rankno = 1
--order by totalppr desc
order by age