declare @now datetime = '2024-12-31'
select * from (
	select *, ROW_NUMBER() over (partition by age order by totalptsppr desc) as rankno from (
		select ps.season, p.birth_date, (CONVERT(int,CONVERT(char(8),@now,112))-CONVERT(char(8),birth_date,112))/10000 as age, 
			display_name, sum(fantasy_points_ppr) as totalptsppr
		from tblPlayerStats as ps
		join tblPlayers p
		on p.gsis_id = ps.player_id
		where ps.season = 2024
		--and p.years_exp = 0
		and ps.week <= 18
		group by display_name, ps.season, p.birth_date
	) a
) b
where rankno < 3
order by birth_date desc 
